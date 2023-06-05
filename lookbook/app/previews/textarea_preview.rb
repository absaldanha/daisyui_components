# frozen_string_literal: true

class TextareaPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Textarea.new(class: "w-full max-w-xs", placeholder: "Bio")
  end

  def bordered
    render DaisyUI::Components::Textarea.new(:bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def ghost
    render DaisyUI::Components::Textarea.new(:ghost, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def with_form_control_and_labels
    render DaisyUI::Components::FormControl.new(class: "w-full max-w-xs") do |form_control|
      form_control.textarea(:bordered, placeholder: "Bio") do |textarea|
        textarea.label do |label|
          label.text { "Your bio" }
          label.alt_text { "Top right label" }
        end

        textarea.helper do |helper|
          helper.alt_text { "Bottom left label" }
          helper.alt_text { "Bottom right label" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::Textarea.new(:primary, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def secondary
    render DaisyUI::Components::Textarea.new(:secondary, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def accent
    render DaisyUI::Components::Textarea.new(:accent, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def info
    render DaisyUI::Components::Textarea.new(:info, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def success
    render DaisyUI::Components::Textarea.new(:success, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def warning
    render DaisyUI::Components::Textarea.new(:warning, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def error
    render DaisyUI::Components::Textarea.new(:error, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end
  # @!endgroup

  # @!group Sizes
  def large
    render DaisyUI::Components::Textarea.new(:lg, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def medium
    render DaisyUI::Components::Textarea.new(:md, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def small
    render DaisyUI::Components::Textarea.new(:sm, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end

  def extra_small
    render DaisyUI::Components::Textarea.new(:xs, :bordered, class: "w-full max-w-xs", placeholder: "Bio")
  end
  # @!endgroup

  def disabled
    render DaisyUI::Components::Textarea.new(:bordered, class: "w-full max-w-xs", placeholder: "Bio", disabled: true)
  end
end
