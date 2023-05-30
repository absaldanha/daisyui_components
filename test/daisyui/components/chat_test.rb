# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class ChatTest < TestCase
      def test_renders_chat_correctly
        render Chat.new

        assert_selector "div[class='chat']"
      end

      def test_renders_chat_with_avatar
        render Chat.new do |chat|
          chat.avatar { "Content" }
        end

        assert_selector "div[class='chat']" do
          assert_selector "div[class='chat-image avatar']", text: "Content"
        end
      end

      def test_renders_chat_with_header
        render Chat.new do |chat|
          chat.header { "Header" }
        end

        assert_selector "div[class='chat']" do
          assert_selector "div[class='chat-header']", text: "Header"
        end
      end

      def test_renders_chat_with_footer
        render Chat.new do |chat|
          chat.footer { "Footer" }
        end

        assert_selector "div[class='chat']" do
          assert_selector "div[class='chat-footer']", text: "Footer"
        end
      end

      def test_renders_chat_with_bubble
        render Chat.new do |chat|
          chat.bubble { "Bubble" }
        end

        assert_selector "div[class='chat']" do
          assert_selector "div[class='chat-bubble']", text: "Bubble"
        end
      end

      def test_renders_chat_with_header_footer_bubble_and_avatar
        output = Chat.call do |chat|
          chat.avatar { "Avatar" }
          chat.header { "Header" }
          chat.footer { "Footer" }
          chat.bubble { "Bubble" }
        end

        assert_equal(
          output,
          '<div class="chat">' \
            '<div class="chat-image avatar">Avatar</div>' \
            '<div class="chat-header">Header</div>' \
            '<div class="chat-bubble">Bubble</div>' \
            '<div class="chat-footer">Footer</div>' \
          "</div>"
        )
      end

      def test_renders_chat_with_start_modifier
        render Chat.new(:start)

        assert_selector "div[class='chat chat-start']"
      end

      def test_renders_chat_with_end_modifier
        render Chat.new(:end)

        assert_selector "div[class='chat chat-end']"
      end
    end
  end
end
