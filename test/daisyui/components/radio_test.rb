# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class RadioTest < TestCase
      def test_renders_radio_correctly
        render Radio.new

        assert_selector "input[type='radio'][class='radio']"
      end

      def test_renders_radio_with_label
        render Radio.new do |radio|
          radio.label do |label|
            label.text { "Label" }
          end
        end

        assert_selector "label[class='label cursor-pointer']" do
          assert_selector "span[class='label-text']", text: "Label"
          assert_selector "input[type='radio'][class='radio']"
        end
      end

      def test_renders_radio_with_primary_modifier
        render Radio.new(:primary)

        assert_selector "input[type='radio'][class='radio radio-primary']"
      end

      def test_renders_radio_with_secondary_modifier
        render Radio.new(:secondary)

        assert_selector "input[type='radio'][class='radio radio-secondary']"
      end

      def test_renders_radio_with_accent_modifier
        render Radio.new(:accent)

        assert_selector "input[type='radio'][class='radio radio-accent']"
      end

      def test_renders_radio_with_success_modifier
        render Radio.new(:success)

        assert_selector "input[type='radio'][class='radio radio-success']"
      end

      def test_renders_radio_with_warning_modifier
        render Radio.new(:warning)

        assert_selector "input[type='radio'][class='radio radio-warning']"
      end

      def test_renders_radio_with_info_modifier
        render Radio.new(:info)

        assert_selector "input[type='radio'][class='radio radio-info']"
      end

      def test_renders_radio_with_error_modifier
        render Radio.new(:error)

        assert_selector "input[type='radio'][class='radio radio-error']"
      end

      def test_renders_radio_with_lg_modifier
        render Radio.new(:lg)

        assert_selector "input[type='radio'][class='radio radio-lg']"
      end

      def test_renders_radio_with_md_modifier
        render Radio.new(:md)

        assert_selector "input[type='radio'][class='radio radio-md']"
      end

      def test_renders_radio_with_sm_modifier
        render Radio.new(:sm)

        assert_selector "input[type='radio'][class='radio radio-sm']"
      end

      def test_renders_radio_with_xs_modifier
        render Radio.new(:xs)

        assert_selector "input[type='radio'][class='radio radio-xs']"
      end
    end
  end
end
