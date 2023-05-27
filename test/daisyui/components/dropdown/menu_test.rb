# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Dropdown::MenuTest < TestCase
      def test_renders_menu_correctly
        render Dropdown::Menu.new

        assert_selector "div[class='dropdown-content menu'][tabindex='0']"
      end

      def test_renders_menu_with_content
        render Dropdown::Menu.new { "Content" }

        assert_selector "div[class='dropdown-content menu'][tabindex='0']", text: "Content"
      end

      def test_renders_menu_with_polymorphic_element
        render Dropdown::Menu.new(element: :ul)

        assert_selector "ul[class='dropdown-content menu'][tabindex='0']"
      end
    end
  end
end
