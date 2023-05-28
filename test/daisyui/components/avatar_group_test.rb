# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class AvatarGroupTest < TestCase
      def test_renders_avatar_group_correctly
        render AvatarGroup.new

        assert_selector "div[class='avatar-group']"
      end

      def test_renders_avatar_group_with_avatars
        render AvatarGroup.new do |group|
          group.avatar(:online)
          group.avatar(:offline)
        end

        assert_selector "div[class='avatar-group']" do
          assert_selector "div[class='avatar online']"
          assert_selector "div[class='avatar offline']"
        end
      end
    end
  end
end
