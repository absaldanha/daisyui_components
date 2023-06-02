# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Rating::MaskTest < TestCase
      def test_renders_mask_correctly
        render Rating::Mask.new

        assert_selector "input[type='radio'][class='mask']"
      end

      def test_renders_mask_with_star_modifier
        render Rating::Mask.new(:star)

        assert_selector "input[type='radio'][class='mask mask-star']"
      end

      def test_renders_mask_with_star_2_modifier
        render Rating::Mask.new(:star_2)

        assert_selector "input[type='radio'][class='mask mask-star-2']"
      end

      def test_renders_mask_with_heart_modifier
        render Rating::Mask.new(:heart)

        assert_selector "input[type='radio'][class='mask mask-heart']"
      end

      def test_renders_mask_with_hidden_modifier
        render Rating::Mask.new(:hidden)

        assert_selector "input[type='radio'][class='mask rating-hidden']"
      end

      def test_renders_mask_with_first_half_modifier
        render Rating::Mask.new(:first_half)

        assert_selector "input[type='radio'][class='mask mask-half-1']"
      end

      def test_renders_mask_with_second_half_modifier
        render Rating::Mask.new(:second_half)

        assert_selector "input[type='radio'][class='mask mask-half-2']"
      end
    end
  end
end
