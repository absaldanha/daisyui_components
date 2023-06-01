# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class CheckboxTest < TestCase
      def test_renders_checkbox_correctly
        render Checkbox.new

        assert_selector "input[type='checkbox'][class='checkbox']"
      end

      def test_renders_checkbox_with_label
        render Checkbox.new do |checkbox|
          checkbox.label do |label|
            label.text { "Label" }
          end
        end

        assert_selector "label[class='label cursor-pointer']" do
          assert_selector "span[class='label-text']", text: "Label"
          assert_selector "input[type='checkbox'][class='checkbox']"
        end
      end

      def test_renders_checkbox_with_primary_modifier
        render Checkbox.new(:primary)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-primary']"
      end

      def test_renders_checkbox_with_secondary_modifier
        render Checkbox.new(:secondary)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-secondary']"
      end

      def test_renders_checkbox_with_accent_modifier
        render Checkbox.new(:accent)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-accent']"
      end

      def test_renders_checkbox_with_success_modifier
        render Checkbox.new(:success)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-success']"
      end

      def test_renders_checkbox_with_warning_modifier
        render Checkbox.new(:warning)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-warning']"
      end

      def test_renders_checkbox_with_info_modifier
        render Checkbox.new(:info)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-info']"
      end

      def test_renders_checkbox_with_error_modifier
        render Checkbox.new(:error)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-error']"
      end

      def test_renders_checkbox_with_lg_modifier
        render Checkbox.new(:lg)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-lg']"
      end

      def test_renders_checkbox_with_md_modifier
        render Checkbox.new(:md)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-md']"
      end

      def test_renders_checkbox_with_sm_modifier
        render Checkbox.new(:sm)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-sm']"
      end

      def test_renders_checkbox_with_xs_modifier
        render Checkbox.new(:xs)

        assert_selector "input[type='checkbox'][class='checkbox checkbox-xs']"
      end
    end
  end
end
