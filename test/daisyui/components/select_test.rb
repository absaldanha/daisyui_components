# frozen_string_literal: true

require "test_helper"

module DaisyUI
  module Components
    class SelectTest < TestCase
      def test_renders_select_correctly
        render Select.new

        assert_selector "select[class='select']"
      end

      def test_renders_select_with_prompt
        render Select.new do |select|
          select.prompt { "Please choose" }
        end

        assert_selector "select[class='select']" do
          assert_selector "option", text: "Please choose"
        end
      end

      def test_renders_select_with_options
        render Select.new do |select|
          select.option(value: 1) { "Foo" }
          select.option(value: 2) { "Bar" }
        end

        assert_selector "select[class='select']" do
          assert_selector "option[value='1']", text: "Foo"
          assert_selector "option[value='2']", text: "Bar"
        end
      end

      def test_renders_select_with_prompt_and_options
        output = Select.call do |select|
          select.option(value: 1) { "Foo" }
          select.option(value: 2) { "Bar" }
          select.prompt { "Please choose" }
        end

        assert_equal(
          '<select class="select">' \
            "<option>Please choose</option>" \
            '<option value="1">Foo</option>' \
            '<option value="2">Bar</option>' \
          "</select>",
          output
        )
      end

      def test_renders_select_with_label
        output = Select.call do |select|
          select.label do |label|
            label.text { "Pick one" }
            label.alt_text { "Just one" }
          end
        end

        assert_equal(
          '<label class="label">' \
            '<span class="label-text">Pick one</span>' \
            '<span class="label-text-alt">Just one</span>' \
          "</label>" \
          '<select class="select"></select>',
          output
        )
      end

      def test_renders_select_with_helper_text
        output = Select.call do |select|
          select.helper do |helper|
            helper.alt_text { "Alt text 1" }
            helper.alt_text { "Alt text 2" }
          end
        end

        assert_equal(
          '<select class="select"></select>' \
          '<label class="label">' \
            '<span class="label-text-alt">Alt text 1</span>' \
            '<span class="label-text-alt">Alt text 2</span>' \
          "</label>",
          output
        )
      end

      def test_renders_select_with_label_and_helper_text
        output = Select.call do |select|
          select.label do |label|
            label.text { "Pick one" }
            label.alt_text { "Just one" }
          end

          select.helper do |helper|
            helper.alt_text { "Alt text 1" }
            helper.alt_text { "Alt text 2" }
          end
        end

        assert_equal(
          '<label class="label">' \
            '<span class="label-text">Pick one</span>' \
            '<span class="label-text-alt">Just one</span>' \
          "</label>" \
          '<select class="select"></select>' \
          '<label class="label">' \
            '<span class="label-text-alt">Alt text 1</span>' \
            '<span class="label-text-alt">Alt text 2</span>' \
          "</label>",
          output
        )
      end

      def test_renders_select_with_bordered_modifier
        render Select.new(:bordered)

        assert_selector "select[class='select select-bordered']"
      end

      def test_renders_select_with_ghost_modifier
        render Select.new(:ghost)

        assert_selector "select[class='select select-ghost']"
      end

      def test_renders_select_with_primary_modifier
        render Select.new(:primary)

        assert_selector "select[class='select select-primary']"
      end

      def test_renders_select_with_secondary_modifier
        render Select.new(:secondary)

        assert_selector "select[class='select select-secondary']"
      end

      def test_renders_select_with_accent_modifier
        render Select.new(:accent)

        assert_selector "select[class='select select-accent']"
      end

      def test_renders_select_with_info_modifier
        render Select.new(:info)

        assert_selector "select[class='select select-info']"
      end

      def test_renders_select_with_success_modifier
        render Select.new(:success)

        assert_selector "select[class='select select-success']"
      end

      def test_renders_select_with_warning_modifier
        render Select.new(:warning)

        assert_selector "select[class='select select-warning']"
      end

      def test_renders_select_with_error_modifier
        render Select.new(:error)

        assert_selector "select[class='select select-error']"
      end

      def test_renders_select_with_lg_modifier
        render Select.new(:lg)

        assert_selector "select[class='select select-lg']"
      end

      def test_renders_select_with_md_modifier
        render Select.new(:md)

        assert_selector "select[class='select select-md']"
      end

      def test_renders_select_with_sm_modifier
        render Select.new(:sm)

        assert_selector "select[class='select select-sm']"
      end

      def test_renders_select_with_xs_modifier
        render Select.new(:xs)

        assert_selector "select[class='select select-xs']"
      end
    end
  end
end
