# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class BadgeTest < TestCase
      def test_renders_badge_correctly
        render Badge.new

        assert_selector "span[class='badge']"
      end

      def test_renders_badge_with_content
        render Badge.new { "Badge" }

        assert_selector "span[class='badge']", text: "Badge"
      end

      def test_renders_badge_with_polymorphic_element
        render Badge.new(element: :div)

        assert_selector "div[class='badge']"
      end

      def test_renders_badge_with_outline_modifier
        render Badge.new(:outline)

        assert_selector "span[class='badge badge-outline']"
      end

      def test_renders_badge_with_primary_modifier
        render Badge.new(:primary)

        assert_selector "span[class='badge badge-primary']"
      end

      def test_renders_badge_with_secondary_modifier
        render Badge.new(:secondary)

        assert_selector "span[class='badge badge-secondary']"
      end

      def test_renders_badge_with_accent_modifier
        render Badge.new(:accent)

        assert_selector "span[class='badge badge-accent']"
      end

      def test_renders_badge_with_ghost_modifier
        render Badge.new(:ghost)

        assert_selector "span[class='badge badge-ghost']"
      end

      def test_renders_badge_with_info_modifier
        render Badge.new(:info)

        assert_selector "span[class='badge badge-info']"
      end

      def test_renders_badge_with_success_modifier
        render Badge.new(:success)

        assert_selector "span[class='badge badge-success']"
      end

      def test_renders_badge_with_warning_modifier
        render Badge.new(:warning)

        assert_selector "span[class='badge badge-warning']"
      end

      def test_renders_badge_with_error_modifier
        render Badge.new(:error)

        assert_selector "span[class='badge badge-error']"
      end

      def test_renders_badge_with_lg_modifier
        render Badge.new(:lg)

        assert_selector "span[class='badge badge-lg']"
      end

      def test_renders_badge_with_md_modifier
        render Badge.new(:md)

        assert_selector "span[class='badge badge-md']"
      end

      def test_renders_badge_with_sm_modifier
        render Badge.new(:sm)

        assert_selector "span[class='badge badge-sm']"
      end

      def test_renders_badge_with_xs_modifier
        render Badge.new(:xs)

        assert_selector "span[class='badge badge-xs']"
      end
    end
  end
end
