# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Dropdown::ToggleTest < TestCase
      def test_renders_toggle
        render Dropdown::Toggle.new

        assert_selector "label[tabindex='0'][class='btn']"
      end

      def test_renders_toggle_with_content
        render Dropdown::Toggle.new { "Click" }

        assert_selector "label[tabindex='0'][class='btn']", text: "Click"
      end

      def test_renders_with_polymorphic_element
        render Dropdown::Toggle.new(element: :button) { "Click" }

        assert_selector "button[tabindex='0'][class='btn']", text: "Click"
      end
    end
  end
end
