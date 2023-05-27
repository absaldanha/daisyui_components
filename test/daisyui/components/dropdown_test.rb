# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class DropdownTest < TestCase
      def test_renders_dropdown_correctly
        render Dropdown.new

        assert_selector "div[class='dropdown']"
      end

      def test_renders_dropdown_with_toggle
        render Dropdown.new do |dropdown|
          dropdown.toggle { "Click" }
        end

        assert_selector "div[class='dropdown']" do
          assert_selector "label[class='btn']"
        end
      end

      def test_renders_dropdown_with_toggle_and_menu
        render Dropdown.new do |dropdown|
          dropdown.toggle { "Click" }
          dropdown.menu { "Menu" }
        end

        assert_selector "div[class='dropdown']" do
          assert_selector "label[class='btn']"
          assert_selector "div[class='dropdown-content menu']"
        end
      end

      def test_renders_dropdown_with_end_modifier
        render Dropdown.new(:end)

        assert_selector "div[class='dropdown dropdown-end']"
      end

      def test_renders_dropdown_with_top_modifier
        render Dropdown.new(:top)

        assert_selector "div[class='dropdown dropdown-top']"
      end

      def test_renders_dropdown_with_bottom_modifier
        render Dropdown.new(:bottom)

        assert_selector "div[class='dropdown dropdown-bottom']"
      end

      def test_renders_dropdown_with_left_modifier
        render Dropdown.new(:left)

        assert_selector "div[class='dropdown dropdown-left']"
      end

      def test_renders_dropdown_with_right_modifier
        render Dropdown.new(:right)

        assert_selector "div[class='dropdown dropdown-right']"
      end

      def test_renders_dropdown_with_hover_modifier
        render Dropdown.new(:hover)

        assert_selector "div[class='dropdown dropdown-hover']"
      end

      def test_renders_dropdown_with_open_modifier
        render Dropdown.new(:open)

        assert_selector "div[class='dropdown dropdown-open']"
      end
    end
  end
end
