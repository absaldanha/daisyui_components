# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Chat::FooterTest < TestCase
      def test_renders_chat_footer_correctly
        render Chat::Footer.new

        assert_selector "div[class='chat-footer']"
      end

      def test_renders_chat_footer_with_content
        render Chat::Footer.new { "Footer" }

        assert_selector "div[class='chat-footer']", text: "Footer"
      end
    end
  end
end
