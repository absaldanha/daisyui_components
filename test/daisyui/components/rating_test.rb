# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class RatingTest < TestCase
      def test_renders_rating_correctly
        render Rating.new

        assert_selector "div[class='rating']"
      end

      def test_renders_rating_with_masks
        render Rating.new do |rating|
          rating.mask
          rating.mask
        end

        assert_selector "div[class='rating']" do
          assert_selector "input[type='radio'][class='mask']", count: 2
        end
      end

      def test_renders_rating_with_half_modifier
        render Rating.new(:half)

        assert_selector "div[class='rating rating-half']"
      end

      def test_renders_rating_with_lg_modifier
        render Rating.new(:lg)

        assert_selector "div[class='rating rating-lg']"
      end

      def test_renders_rating_with_md_modifier
        render Rating.new(:md)

        assert_selector "div[class='rating rating-md']"
      end

      def test_renders_rating_with_sm_modifier
        render Rating.new(:sm)

        assert_selector "div[class='rating rating-sm']"
      end

      def test_renders_rating_with_xs_modifier
        render Rating.new(:xs)

        assert_selector "div[class='rating rating-xs']"
      end
    end
  end
end
