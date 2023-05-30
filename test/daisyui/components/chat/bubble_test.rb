# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Chat::BubbleTest < TestCase
      def test_renders_chat_bubble_correctly
        render Chat::Bubble.new

        assert_selector "div[class='chat-bubble']"
      end

      def test_renders_chat_bubble_with_content
        render Chat::Bubble.new { "Bubble" }

        assert_selector "div[class='chat-bubble']", text: "Bubble"
      end

      def test_renders_chat_bubble_with_primary_modifier
        render Chat::Bubble.new(:primary)

        assert_selector "div[class='chat-bubble chat-bubble-primary']"
      end

      def test_renders_chat_bubble_with_secondary_modifier
        render Chat::Bubble.new(:secondary)

        assert_selector "div[class='chat-bubble chat-bubble-secondary']"
      end

      def test_renders_chat_bubble_with_accent_modifier
        render Chat::Bubble.new(:accent)

        assert_selector "div[class='chat-bubble chat-bubble-accent']"
      end

      def test_renders_chat_bubble_with_info_modifier
        render Chat::Bubble.new(:info)

        assert_selector "div[class='chat-bubble chat-bubble-info']"
      end

      def test_renders_chat_bubble_with_success_modifier
        render Chat::Bubble.new(:success)

        assert_selector "div[class='chat-bubble chat-bubble-success']"
      end

      def test_renders_chat_bubble_with_warning_modifier
        render Chat::Bubble.new(:warning)

        assert_selector "div[class='chat-bubble chat-bubble-warning']"
      end

      def test_renders_chat_bubble_with_error_modifier
        render Chat::Bubble.new(:error)

        assert_selector "div[class='chat-bubble chat-bubble-error']"
      end
    end
  end
end
