# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class FileInputTest < TestCase
      def test_renders_file_input_correctly
        render FileInput.new

        assert_selector "input[type='file'][class='file-input']"
      end

      def test_renders_file_input_with_label
        output = FileInput.call do |file_input|
          file_input.label do |label|
            label.text { "Pick a file" }
            label.alt_text { "Any file" }
          end
        end

        assert_equal(
          output,
          '<label class="label">' \
            '<span class="label-text">Pick a file</span>' \
            '<span class="label-text-alt">Any file</span>' \
          "</label>" \
          '<input class="file-input" type="file">'
        )
      end

      def test_renders_file_input_with_helper
        output = FileInput.call do |file_input|
          file_input.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          output,
          '<input class="file-input" type="file">' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>"
        )
      end

      def test_renders_file_input_with_label_and_helper
        output = FileInput.call do |file_input|
          file_input.label do |label|
            label.text { "Pick a file" }
            label.alt_text { "Any file" }
          end

          file_input.helper do |helper|
            helper.alt_text { "Helper 1" }
            helper.alt_text { "Helper 2" }
          end
        end

        assert_equal(
          output,
          '<label class="label">' \
            '<span class="label-text">Pick a file</span>' \
            '<span class="label-text-alt">Any file</span>' \
          "</label>" \
          '<input class="file-input" type="file">' \
          '<label class="label">' \
            '<span class="label-text-alt">Helper 1</span>' \
            '<span class="label-text-alt">Helper 2</span>' \
          "</label>"
        )
      end

      def test_renders_file_input_with_bordered_modifier
        render FileInput.new(:bordered)

        assert_selector "input[type='file'][class='file-input file-input-bordered']"
      end

      def test_renders_file_input_with_ghost_modifier
        render FileInput.new(:ghost)

        assert_selector "input[type='file'][class='file-input file-input-ghost']"
      end

      def test_renders_file_input_with_primary_modifier
        render FileInput.new(:primary)

        assert_selector "input[type='file'][class='file-input file-input-primary']"
      end

      def test_renders_file_input_with_secondary_modifier
        render FileInput.new(:secondary)

        assert_selector "input[type='file'][class='file-input file-input-secondary']"
      end

      def test_renders_file_input_with_accent_modifier
        render FileInput.new(:accent)

        assert_selector "input[type='file'][class='file-input file-input-accent']"
      end

      def test_renders_file_input_with_info_modifier
        render FileInput.new(:info)

        assert_selector "input[type='file'][class='file-input file-input-info']"
      end

      def test_renders_file_input_with_success_modifier
        render FileInput.new(:success)

        assert_selector "input[type='file'][class='file-input file-input-success']"
      end

      def test_renders_file_input_with_warning_modifier
        render FileInput.new(:warning)

        assert_selector "input[type='file'][class='file-input file-input-warning']"
      end

      def test_renders_file_input_with_error_modifier
        render FileInput.new(:error)

        assert_selector "input[type='file'][class='file-input file-input-error']"
      end

      def test_renders_file_input_with_lg_modifier
        render FileInput.new(:lg)

        assert_selector "input[type='file'][class='file-input file-input-lg']"
      end

      def test_renders_file_input_with_md_modifier
        render FileInput.new(:md)

        assert_selector "input[type='file'][class='file-input file-input-md']"
      end

      def test_renders_file_input_with_sm_modifier
        render FileInput.new(:sm)

        assert_selector "input[type='file'][class='file-input file-input-sm']"
      end

      def test_renders_file_input_with_xs_modifier
        render FileInput.new(:xs)

        assert_selector "input[type='file'][class='file-input file-input-xs']"
      end
    end
  end
end
