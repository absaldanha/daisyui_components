# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class TextareaTest < TestCase
      def test_renders_textarea_correctly
        render Textarea.new

        assert_selector "textarea[class='textarea']"
      end

      def test_renders_textarea_with_label
        output = Textarea.call do |textarea|
          textarea.label do |label|
            label.text { "Label" }
            label.alt_text { "Alt label" }
          end
        end

        assert_equal(
          '<label class="label">' \
            '<span class="label-text">Label</span>' \
            '<span class="label-text-alt">Alt label</span>' \
          "</label>" \
          '<textarea class="textarea"></textarea>',
          output
        )
      end

      def test_renders_textarea_with_helper
        output = Textarea.call do |textarea|
          textarea.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          '<textarea class="textarea"></textarea>' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>",
          output
        )
      end

      def test_renders_textarea_with_label_and_helper
        output = Textarea.call do |textarea|
          textarea.label do |label|
            label.text { "Label" }
            label.alt_text { "Alt label" }
          end

          textarea.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          '<label class="label">' \
            '<span class="label-text">Label</span>' \
            '<span class="label-text-alt">Alt label</span>' \
          "</label>" \
          '<textarea class="textarea"></textarea>' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>",
          output
        )
      end

      def test_renders_textarea_with_bordered_modifier
        render Textarea.new(:bordered)

        assert_selector "textarea[class='textarea textarea-bordered']"
      end

      def test_renders_textarea_with_ghost_modifier
        render Textarea.new(:ghost)

        assert_selector "textarea[class='textarea textarea-ghost']"
      end

      def test_renders_textarea_with_primary_modifier
        render Textarea.new(:primary)

        assert_selector "textarea[class='textarea textarea-primary']"
      end

      def test_renders_textarea_with_secondary_modifier
        render Textarea.new(:secondary)

        assert_selector "textarea[class='textarea textarea-secondary']"
      end

      def test_renders_textarea_with_accent_modifier
        render Textarea.new(:accent)

        assert_selector "textarea[class='textarea textarea-accent']"
      end

      def test_renders_textarea_with_info_modifier
        render Textarea.new(:info)

        assert_selector "textarea[class='textarea textarea-info']"
      end

      def test_renders_textarea_with_success_modifier
        render Textarea.new(:success)

        assert_selector "textarea[class='textarea textarea-success']"
      end

      def test_renders_textarea_with_warning_modifier
        render Textarea.new(:warning)

        assert_selector "textarea[class='textarea textarea-warning']"
      end

      def test_renders_textarea_with_error_modifier
        render Textarea.new(:error)

        assert_selector "textarea[class='textarea textarea-error']"
      end

      def test_renders_textarea_with_lg_modifier
        render Textarea.new(:lg)

        assert_selector "textarea[class='textarea textarea-lg']"
      end

      def test_renders_textarea_with_md_modifier
        render Textarea.new(:md)

        assert_selector "textarea[class='textarea textarea-md']"
      end

      def test_renders_textarea_with_sm_modifier
        render Textarea.new(:sm)

        assert_selector "textarea[class='textarea textarea-sm']"
      end

      def test_renders_textarea_with_xs_modifier
        render Textarea.new(:xs)

        assert_selector "textarea[class='textarea textarea-xs']"
      end
    end
  end
end
