# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Swap::ToggleTest < TestCase
      def test_renders_toggle_correctly
        render Swap::Toggle.new

        assert_selector "div"
      end

      def test_renders_toggle_with_on_modifier
        render Swap::Toggle.new(:on)

        assert_selector "div[class='swap-on']"
      end

      def test_renders_toggle_with_off_modifier
        render Swap::Toggle.new(:off)

        assert_selector "div[class='swap-off']"
      end

      def test_renders_toggle_with_polymorphic_element
        render Swap::Toggle.new(:on, element: :p)

        assert_selector "p[class='swap-on']"
      end
    end
  end
end
