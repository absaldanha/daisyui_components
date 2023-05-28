# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class AlertTest < TestCase
      def test_renders_alert_correctly
        render Alert.new

        assert_selector "div[class='alert']"
      end

      def test_renders_alert_with_content
        render Alert.new do
          "Hello"
        end

        assert_selector "div[class='alert']", text: "Hello"
      end

      def test_renders_alert_with_info_modifier
        render Alert.new(:info)

        assert_selector "div[class='alert alert-info']"
      end

      def test_renders_alert_with_success_modifier
        render Alert.new(:success)

        assert_selector "div[class='alert alert-success']"
      end

      def test_renders_alert_with_warning_modifier
        render Alert.new(:warning)

        assert_selector "div[class='alert alert-warning']"
      end

      def test_renders_alert_with_error_modifier
        render Alert.new(:error)

        assert_selector "div[class='alert alert-error']"
      end
    end
  end
end
