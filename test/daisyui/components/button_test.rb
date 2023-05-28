# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class ButtonTest < TestCase
      def test_renders_button_correctly
        render Button.new

        assert_selector "button[class='btn']"
      end

      def test_renders_button_with_content
        render Button.new { "Content" }

        assert_selector "button[class='btn']", text: "Content"
      end

      def test_renders_button_with_primary_modifier
        render Button.new(:primary)

        assert_selector "button[class='btn btn-primary']"
      end

      def test_renders_button_with_secondary_modifier
        render Button.new(:secondary)

        assert_selector "button[class='btn btn-secondary']"
      end

      def test_renders_button_with_accent_modifier
        render Button.new(:accent)

        assert_selector "button[class='btn btn-accent']"
      end

      def test_renders_button_with_info_modifier
        render Button.new(:info)

        assert_selector "button[class='btn btn-info']"
      end

      def test_renders_button_with_success_modifier
        render Button.new(:success)

        assert_selector "button[class='btn btn-success']"
      end

      def test_renders_button_with_warning_modifier
        render Button.new(:warning)

        assert_selector "button[class='btn btn-warning']"
      end

      def test_renders_button_with_error_modifier
        render Button.new(:error)

        assert_selector "button[class='btn btn-error']"
      end

      def test_renders_button_with_ghost_modifier
        render Button.new(:ghost)

        assert_selector "button[class='btn btn-ghost']"
      end

      def test_renders_button_with_link_modifier
        render Button.new(:link)

        assert_selector "button[class='btn btn-link']"
      end

      def test_renders_button_with_outline_modifier
        render Button.new(:outline)

        assert_selector "button[class='btn btn-outline']"
      end

      def test_renders_button_with_active_modifier
        render Button.new(:active)

        assert_selector "button[class='btn btn-active']"
      end

      def test_renders_button_with_disabled_modifier
        render Button.new(:disabled)

        assert_selector "button[class='btn btn-disabled']"
      end

      def test_renders_button_with_glass_modifier
        render Button.new(:glass)

        assert_selector "button[class='btn glass']"
      end

      def test_renders_button_with_loading_modifier
        render Button.new(:loading)

        assert_selector "button[class='btn loading']"
      end

      def test_renders_button_with_lg_modifier
        render Button.new(:lg)

        assert_selector "button[class='btn btn-lg']"
      end

      def test_renders_button_with_md_modifier
        render Button.new(:md)

        assert_selector "button[class='btn btn-md']"
      end

      def test_renders_button_with_sm_modifier
        render Button.new(:sm)

        assert_selector "button[class='btn btn-sm']"
      end

      def test_renders_button_with_xs_modifier
        render Button.new(:xs)

        assert_selector "button[class='btn btn-xs']"
      end

      def test_renders_button_with_wide_modifier
        render Button.new(:wide)

        assert_selector "button[class='btn btn-wide']"
      end

      def test_renders_button_with_block_modifier
        render Button.new(:block)

        assert_selector "button[class='btn btn-block']"
      end

      def test_renders_button_with_circle_modifier
        render Button.new(:circle)

        assert_selector "button[class='btn btn-circle']"
      end

      def test_renders_button_with_square_modifier
        render Button.new(:square)

        assert_selector "button[class='btn btn-square']"
      end

      def test_renders_with_polymorphic_element
        render Button.new(element: :input)

        assert_selector "input[class='btn']"
      end
    end
  end
end
