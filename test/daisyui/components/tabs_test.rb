# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class TabsTest < TestCase
      def test_renders_tabs_element_correctly
        render Tabs.new

        assert_selector "div[class='tabs']"
      end

      def test_renders_tabs_with_boxed_modifier
        render Tabs.new(:boxed)

        assert_selector "div[class='tabs tabs-boxed']"
      end

      def test_renders_tabs_with_tab
        render Tabs.new do |tabs|
          tabs.tab { "Tab 1" }
          tabs.tab(:active) { "Tab 2" }
        end

        assert_selector "div[class='tabs']" do
          assert_selector "a[class='tab']"
          assert_selector "a[class='tab tab-active']"
        end
      end
    end
  end
end
