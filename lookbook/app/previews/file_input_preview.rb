# frozen_string_literal: true

# @logical_path data_input
class FileInputPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::FileInput.new(class: "w-full max-w-xs")
  end

  def with_border
    render DaisyUI::Components::FileInput.new(:bordered, class: "w-full max-w-xs")
  end

  def ghost
    render DaisyUI::Components::FileInput.new(:ghost, class: "w-full max-w-xs")
  end

  def with_form_control_and_labels
    render DaisyUI::Components::FormControl.new(class: "w-full max-w-xs") do |form_control|
      form_control.file_input(:bordered, class: "w-full max-w-xs") do |file_input|
        file_input.label do |label|
          label.text { "Pick a file" }
          label.alt_text { "Alt label" }
        end

        file_input.helper do |helper|
          helper.alt_text { "Alt label" }
          helper.alt_text { "Alt label" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::FileInput.new(:bordered, :primary, class: "w-full max-w-xs")
  end

  def secondary
    render DaisyUI::Components::FileInput.new(:bordered, :secondary, class: "w-full max-w-xs")
  end

  def accent
    render DaisyUI::Components::FileInput.new(:bordered, :accent, class: "w-full max-w-xs")
  end

  def info
    render DaisyUI::Components::FileInput.new(:bordered, :info, class: "w-full max-w-xs")
  end

  def success
    render DaisyUI::Components::FileInput.new(:bordered, :success, class: "w-full max-w-xs")
  end

  def warning
    render DaisyUI::Components::FileInput.new(:bordered, :warning, class: "w-full max-w-xs")
  end

  def error
    render DaisyUI::Components::FileInput.new(:bordered, :error, class: "w-full max-w-xs")
  end
  # @!endgroup

  # @!group Sizes
  def extra_small
    render DaisyUI::Components::FileInput.new(:bordered, :xs, class: "w-full max-w-xs")
  end

  def small
    render DaisyUI::Components::FileInput.new(:bordered, :sm, class: "w-full max-w-xs")
  end

  def medium
    render DaisyUI::Components::FileInput.new(:bordered, :md, class: "w-full max-w-xs")
  end

  def large
    render DaisyUI::Components::FileInput.new(:bordered, :lg, class: "w-full max-w-xs")
  end
  # @!endgroup

  def disabled
    render DaisyUI::Components::FileInput.new(:bordered, class: "w-full max-w-xs", disabled: true)
  end
end
