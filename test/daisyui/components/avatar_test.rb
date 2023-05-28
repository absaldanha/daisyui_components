# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class AvatarTest < TestCase
      def test_renders_avatar_correctly
        render Avatar.new

        assert_selector "div[class='avatar']"
      end

      def test_renders_avatar_with_content
        render Avatar.new { "Content" }

        assert_selector "div[class='avatar']", text: "Content"
      end

      def test_renders_avatar_with_online_modifier
        render Avatar.new(:online)

        assert_selector "div[class='avatar online']"
      end

      def test_renders_avatar_with_offline_modifier
        render Avatar.new(:offline)

        assert_selector "div[class='avatar offline']"
      end

      def test_renders_avatar_with_placeholder_modifier
        render Avatar.new(:placeholder)

        assert_selector "div[class='avatar placeholder']"
      end
    end
  end
end
