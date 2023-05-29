# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class CardTest < TestCase
      def test_renders_card_correctly
        render Card.new

        assert_selector "div[class='card']"
      end

      def test_renders_card_with_body
        render Card.new do |card|
          card.body do
            "Body Content"
          end
        end

        assert_selector "div[class='card']" do
          assert_selector "div[class='card-body']", text: "Body Content"
        end
      end

      def test_renders_card_with_body_and_other_content_at_top
        output = Card.call do |card|
          card.figure do
            card.img(src: "foo")
          end
          card.body { "Body Content" }
        end

        assert_equal(
          output,
          %(<div class="card"><figure><img src="foo"></figure><div class="card-body">Body Content</div></div>)
        )
      end

      def test_renders_card_with_body_and_other_content_at_bottom
        output = Card.call do |card|
          card.body { "Body Content" }
          card.figure do
            card.img(src: "foo")
          end
        end

        assert_equal(
          output,
          %(<div class="card"><div class="card-body">Body Content</div><figure><img src="foo"></figure></div>)
        )
      end

      def test_renders_card_with_bordered_modifier
        render Card.new(:bordered)

        assert_selector "div[class='card card-bordered']"
      end

      def test_renders_card_with_full_image_modifier
        render Card.new(:full_image)

        assert_selector "div[class='card image-full']"
      end

      def test_renders_card_with_normal_modifier
        render Card.new(:normal)

        assert_selector "div[class='card card-normal']"
      end

      def test_renders_card_with_compact_modifier
        render Card.new(:compact)

        assert_selector "div[class='card card-compact']"
      end

      def test_renders_card_with_side_modifier
        render Card.new(:side)

        assert_selector "div[class='card card-side']"
      end
    end
  end
end
