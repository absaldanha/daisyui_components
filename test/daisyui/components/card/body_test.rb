# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Card::BodyTest < TestCase
      def test_renders_card_body_correctly
        render Card::Body.new

        assert_selector "div[class='card-body']"
      end

      def test_renders_card_body_with_title
        render Card::Body.new do |body|
          body.title { "Title" }
        end

        assert_selector "div[class='card-body']" do
          assert_selector "h2[class='card-title']", text: "Title"
        end
      end

      def test_renders_card_body_with_actions
        render Card::Body.new do |body|
          body.actions { "Actions" }
        end

        assert_selector "div[class='card-body']" do
          assert_selector "div[class='card-actions']", text: "Actions"
        end
      end

      def test_renders_card_body_with_title_and_actions
        output = Card::Body.call do |body|
          body.title { "Title" }
          body.actions { "Actions" }
        end

        assert_equal(
          output,
          %(<div class="card-body"><h2 class="card-title">Title</h2><div class="card-actions">Actions</div></div>)
        )
      end
    end
  end
end
