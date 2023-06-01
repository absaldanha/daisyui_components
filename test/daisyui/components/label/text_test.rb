# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class Label::TextTest < TestCase
      def test_renders_label_text_correctly
        render Label::Text.new

        assert_selector "span[class='label-text']"
      end

      def test_renders_label_text_with_content
        render Label::Text.new { "Label" }

        assert_selector "span[class='label-text']", text: "Label"
      end

      def test_renders_label_text_with_alt_modifier
        render Label::Text.new(:alt) { "Alt Text" }

        assert_selector "span[class='label-text-alt']", text: "Alt Text"
      end
    end
  end
end
