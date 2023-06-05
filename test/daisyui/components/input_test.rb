# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class InputTest < TestCase
      def test_renders_input_correctly
        render Input.new

        assert_selector "input[class='input'][type='text']"
      end

      def test_renders_input_with_label
        output = Input.call do |input|
          input.label do |label|
            label.text { "Label" }
            label.alt_text { "Alt label" }
          end
        end

        assert_equal(
          output,
          '<label class="label">' \
            '<span class="label-text">Label</span>' \
            '<span class="label-text-alt">Alt label</span>' \
          "</label>" \
          '<input class="input" type="text">'
        )
      end

      def test_renders_input_with_helper
        output = Input.call do |input|
          input.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          output,
          '<input class="input" type="text">' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>"
        )
      end

      def test_renders_input_with_label_and_helper
        output = Input.call do |input|
          input.label do |label|
            label.text { "Label" }
            label.alt_text { "Alt label" }
          end

          input.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          output,
          '<label class="label">' \
            '<span class="label-text">Label</span>' \
            '<span class="label-text-alt">Alt label</span>' \
          "</label>" \
          '<input class="input" type="text">' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>"
        )
      end

      def test_renders_input_with_bordered_modifier
        render Input.new(:bordered)

        assert_selector "input[type='text'][class='input input-bordered']"
      end

      def test_renders_input_with_ghost_modifier
        render Input.new(:ghost)

        assert_selector "input[type='text'][class='input input-ghost']"
      end

      def test_renders_input_with_primary_modifier
        render Input.new(:primary)

        assert_selector "input[type='text'][class='input input-primary']"
      end

      def test_renders_input_with_secondary_modifier
        render Input.new(:secondary)

        assert_selector "input[type='text'][class='input input-secondary']"
      end

      def test_renders_input_with_accent_modifier
        render Input.new(:accent)

        assert_selector "input[type='text'][class='input input-accent']"
      end

      def test_renders_input_with_info_modifier
        render Input.new(:info)

        assert_selector "input[type='text'][class='input input-info']"
      end

      def test_renders_input_with_success_modifier
        render Input.new(:success)

        assert_selector "input[type='text'][class='input input-success']"
      end

      def test_renders_input_with_warning_modifier
        render Input.new(:warning)

        assert_selector "input[type='text'][class='input input-warning']"
      end

      def test_renders_input_with_error_modifier
        render Input.new(:error)

        assert_selector "input[type='text'][class='input input-error']"
      end

      def test_renders_input_with_lg_modifier
        render Input.new(:lg)

        assert_selector "input[type='text'][class='input input-lg']"
      end

      def test_renders_input_with_md_modifier
        render Input.new(:md)

        assert_selector "input[type='text'][class='input input-md']"
      end

      def test_renders_input_with_sm_modifier
        render Input.new(:sm)

        assert_selector "input[type='text'][class='input input-sm']"
      end

      def test_renders_input_with_xs_modifier
        render Input.new(:xs)

        assert_selector "input[type='text'][class='input input-xs']"
      end
    end
  end
end
