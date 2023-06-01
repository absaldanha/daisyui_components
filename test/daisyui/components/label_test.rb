# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class LabelTest < TestCase
      def test_renders_label_correctly
        render Label.new

        assert_selector "label[class='label']"
      end

      def test_renders_label_with_content
        render Label.new do |label|
          label.content { label.div { "Div" } }
        end

        assert_selector "label[class='label']" do
          assert_selector "div", text: "Div"
        end
      end

      def test_renders_label_with_text
        render Label.new do |label|
          label.text { "Text" }
        end

        assert_selector "label[class='label']" do
          assert_selector "span[class='label-text']", text: "Text"
        end
      end

      def test_renders_label_with_alt_text
        render Label.new do |label|
          label.alt_text { "Alt Text" }
        end

        assert_selector "label[class='label']" do
          assert_selector "span[class='label-text-alt']", text: "Alt Text"
        end
      end

      def test_renders_label_with_text_and_alt_text
        render Label.new do |label|
          label.text { "Text" }
          label.alt_text { "Alt Text" }
        end

        assert_selector "label[class='label']" do
          assert_selector "span[class='label-text']", text: "Text"
          assert_selector "span[class='label-text-alt']", text: "Alt Text"
        end
      end

      def test_renders_label_with_multiple_alt_texts
        render Label.new do |label|
          label.alt_text { "First Alt Text" }
          label.alt_text { "Second Alt Text" }
        end

        assert_selector "label[class='label']" do
          assert_selector "span[class='label-text-alt']", text: "First Alt Text"
          assert_selector "span[class='label-text-alt']", text: "Second Alt Text"
        end
      end
    end
  end
end
