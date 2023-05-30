# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Chat::HeaderTest < TestCase
      def test_renders_chat_header_correctly
        render Chat::Header.new

        assert_selector "div[class='chat-header']"
      end

      def test_renders_chat_header_with_content
        render Chat::Header.new { "Header" }

        assert_selector "div[class='chat-header']", text: "Header"
      end
    end
  end
end
