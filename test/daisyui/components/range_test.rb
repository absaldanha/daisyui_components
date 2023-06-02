# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class RangeTest < TestCase
      def test_renders_range_correctly
        render Range.new

        assert_selector "input[type='range'][class='range']"
      end

      def test_renders_range_with_steps
        output = Range.call do |range|
          range.steps(3)
        end

        assert_equal(
          output,
          '<input class="range" type="range">' \
          '<div class="w-full flex justify-between text-xs px-2">' \
            "<span>|</span>" \
            "<span>|</span>" \
            "<span>|</span>" \
          "</div>"
        )
      end

      def test_renders_range_with_primary_modifier
        render Range.new(:primary)

        assert_selector "input[type='range'][class='range range-primary']"
      end

      def test_renders_range_with_secondary_modifier
        render Range.new(:secondary)

        assert_selector "input[type='range'][class='range range-secondary']"
      end

      def test_renders_range_with_accent_modifier
        render Range.new(:accent)

        assert_selector "input[type='range'][class='range range-accent']"
      end

      def test_renders_range_with_success_modifier
        render Range.new(:success)

        assert_selector "input[type='range'][class='range range-success']"
      end

      def test_renders_range_with_warning_modifier
        render Range.new(:warning)

        assert_selector "input[type='range'][class='range range-warning']"
      end

      def test_renders_range_with_info_modifier
        render Range.new(:info)

        assert_selector "input[type='range'][class='range range-info']"
      end

      def test_renders_range_with_error_modifier
        render Range.new(:error)

        assert_selector "input[type='range'][class='range range-error']"
      end

      def test_renders_range_with_lg_modifier
        render Range.new(:lg)

        assert_selector "input[type='range'][class='range range-lg']"
      end

      def test_renders_range_with_md_modifier
        render Range.new(:md)

        assert_selector "input[type='range'][class='range range-md']"
      end

      def test_renders_range_with_sm_modifier
        render Range.new(:sm)

        assert_selector "input[type='range'][class='range range-sm']"
      end

      def test_renders_range_with_xs_modifier
        render Range.new(:xs)

        assert_selector "input[type='range'][class='range range-xs']"
      end
    end
  end
end
