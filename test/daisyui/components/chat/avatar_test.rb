# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Chat::AvatarTest < TestCase
      def test_renders_chat_avatar_correctly
        render Chat::Avatar.new

        assert_selector "div[class='chat-image avatar']"
      end

      def test_renders_chat_avatar_with_content
        render Chat::Avatar.new { "Avatar" }

        assert_selector "div[class='chat-image avatar']", text: "Avatar"
      end
    end
  end
end
