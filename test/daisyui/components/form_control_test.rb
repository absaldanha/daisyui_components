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

      def test_renders_form_control_with_file_input
        render FormControl.new do |form_control|
          form_control.file_input
        end

        assert_selector "div[class='form-control']" do
          assert_selector "input[type='file'][class='file-input']"
        end
      end

      def test_renders_form_control_with_radio
        render FormControl.new do |form_control|
          form_control.radio
        end

        assert_selector "div[class='form-control']" do
          assert_selector "input[type='radio'][class='radio']"
        end
      end

      def test_renders_form_control_with_select
        render FormControl.new do |form_control|
          form_control.select
        end

        assert_selector "div[class='form-control']" do
          assert_selector "select[class='select']"
        end
      end
    end
  end
end
