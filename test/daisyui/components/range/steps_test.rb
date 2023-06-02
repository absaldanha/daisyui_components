# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Range::StepsTest < TestCase
      def test_renders_range_steps_correctly
        render Range::Steps.new(2)

        assert_selector "div[class='w-full flex justify-between text-xs px-2']" do
          assert_selector "span", text: "|", count: 2
        end
      end
    end
  end
end
