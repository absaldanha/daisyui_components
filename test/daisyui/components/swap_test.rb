# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class SwapTest < TestCase
      def test_renders_swap_correctly
        render Swap.new

        assert_selector "label[class='swap']" do
          assert_selector "input[type='checkbox']"
        end
      end

      def test_renders_swap_with_on_element
        render Swap.new do |swap|
          swap.on { "Hello" }
        end

        assert_selector "label[class='swap']" do
          assert_selector "input[type='checkbox']"
          assert_selector "div[class='swap-on']", text: "Hello"
        end
      end

      def test_renders_swap_with_off_element
        render Swap.new do |swap|
          swap.off { "Bye" }
        end

        assert_selector "label[class='swap']" do
          assert_selector "input[type='checkbox']"
          assert_selector "div[class='swap-off']", text: "Bye"
        end
      end

      def test_renders_swap_with_on_and_off_element
        render Swap.new do |swap|
          swap.on { "Hello" }
          swap.off { "Bye" }
        end

        assert_selector "label[class='swap']" do
          assert_selector "input[type='checkbox']"
          assert_selector "div[class='swap-on']", text: "Hello"
          assert_selector "div[class='swap-off']", text: "Bye"
        end
      end

      def test_renders_swap_with_active_modifier
        render Swap.new(:active)

        assert_selector "label[class='swap swap-active']" do
          assert_selector "input[type='checkbox']", count: 0
        end
      end

      def test_renders_swap_with_rotate_modifier
        render Swap.new(:rotate)

        assert_selector "label[class='swap swap-rotate']" do
          assert_selector "input[type='checkbox']"
        end
      end

      def test_renders_swap_with_flip_modifier
        render Swap.new(:flip)

        assert_selector "label[class='swap swap-flip']" do
          assert_selector "input[type='checkbox']"
        end
      end
    end
  end
end
