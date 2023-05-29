# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Card::TitleTest < TestCase
      def test_renders_card_title_correctly
        render Card::Title.new

        assert_selector "h2[class='card-title']"
      end

      def test_renders_card_title_with_polymorphic_element
        render Card::Title.new(element: :h1)

        assert_selector "h1[class='card-title']"
      end
    end
  end
end
