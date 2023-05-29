# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Card::ActionsTest < TestCase
      def test_renders_card_actions_correctly
        render Card::Actions.new

        assert_selector "div[class='card-actions']"
      end
    end
  end
end
