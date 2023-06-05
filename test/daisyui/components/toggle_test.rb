# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class ToggleTest < TestCase
      def test_renders_toggle_correctly
        render Toggle.new

        assert_selector "input[type='checkbox'][class='toggle']"
      end

      def test_renders_toggle_with_label
        render Toggle.new do |toggle|
          toggle.label do |label|
            label.text { "Label" }
          end
        end

        assert_selector "label[class='label cursor-pointer']" do
          assert_selector "span[class='label-text']", text: "Label"
          assert_selector "input[type='checkbox'][class='toggle']"
        end
      end

      def test_renders_toggle_with_primary_modifier
        render Toggle.new(:primary)

        assert_selector "input[type='checkbox'][class='toggle toggle-primary']"
      end

      def test_renders_toggle_with_secondary_modifier
        render Toggle.new(:secondary)

        assert_selector "input[type='checkbox'][class='toggle toggle-secondary']"
      end

      def test_renders_toggle_with_accent_modifier
        render Toggle.new(:accent)

        assert_selector "input[type='checkbox'][class='toggle toggle-accent']"
      end

      def test_renders_toggle_with_success_modifier
        render Toggle.new(:success)

        assert_selector "input[type='checkbox'][class='toggle toggle-success']"
      end

      def test_renders_toggle_with_warning_modifier
        render Toggle.new(:warning)

        assert_selector "input[type='checkbox'][class='toggle toggle-warning']"
      end

      def test_renders_toggle_with_info_modifier
        render Toggle.new(:info)

        assert_selector "input[type='checkbox'][class='toggle toggle-info']"
      end

      def test_renders_toggle_with_error_modifier
        render Toggle.new(:error)

        assert_selector "input[type='checkbox'][class='toggle toggle-error']"
      end

      def test_renders_toggle_with_lg_modifier
        render Toggle.new(:lg)

        assert_selector "input[type='checkbox'][class='toggle toggle-lg']"
      end

      def test_renders_toggle_with_md_modifier
        render Toggle.new(:md)

        assert_selector "input[type='checkbox'][class='toggle toggle-md']"
      end

      def test_renders_toggle_with_sm_modifier
        render Toggle.new(:sm)

        assert_selector "input[type='checkbox'][class='toggle toggle-sm']"
      end

      def test_renders_toggle_with_xs_modifier
        render Toggle.new(:xs)

        assert_selector "input[type='checkbox'][class='toggle toggle-xs']"
      end
    end
  end
end
