# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Tabs::TabTest < TestCase
      def test_renders_tab_element_correctly
        render Tabs::Tab.new

        assert_selector "a[class='tab']"
      end

      def test_renders_tab_element_with_content
        render Tabs::Tab.new { "Content" }

        assert_selector "a", text: "Content"
      end

      def test_renders_tab_with_active_modifier
        render Tabs::Tab.new(:active)

        assert_selector "a[class='tab tab-active']"
      end

      def test_renders_tab_with_disabled_modifier
        render Tabs::Tab.new(:disabled)

        assert_selector "a[class='tab tab-disabled']"
      end

      def test_renders_tab_with_bordered_modifier
        render Tabs::Tab.new(:bordered)

        assert_selector "a[class='tab tab-bordered']"
      end

      def test_renders_tab_with_lifted_modifier
        render Tabs::Tab.new(:lifted)

        assert_selector "a[class='tab tab-lifted']"
      end

      def test_renders_tab_with_xs_modifier
        render Tabs::Tab.new(:xs)

        assert_selector "a[class='tab tab-xs']"
      end

      def test_renders_tab_with_sm_modifier
        render Tabs::Tab.new(:sm)

        assert_selector "a[class='tab tab-sm']"
      end

      def test_renders_tab_with_md_modifier
        render Tabs::Tab.new(:md)

        assert_selector "a[class='tab tab-md']"
      end

      def test_renders_tab_with_lg_modifier
        render Tabs::Tab.new(:lg)

        assert_selector "a[class='tab tab-lg']"
      end
    end
  end
end
