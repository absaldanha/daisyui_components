# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class FormControlTest < TestCase
      def test_renders_form_control_correctly
        render FormControl.new

        assert_selector "div[class='form-control']"
      end

      def test_renders_form_control_with_checkbox
        render FormControl.new do |form_control|
          form_control.checkbox
        end

        assert_selector "div[class='form-control']" do
          assert_selector "input[type='checkbox'][class='checkbox']"
        end
      end
    end
  end
end