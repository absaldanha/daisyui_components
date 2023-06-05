# frozen_string_literal: true

class InputPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Input.new(class: "w-full max-w-xs", placeholder: "Type here")
  end

  def bordered
    render DaisyUI::Components::Input.new(:bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def ghost
    render DaisyUI::Components::Input.new(:ghost, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def with_form_control_and_labels
    render DaisyUI::Components::FormControl.new(class: "w-full max-w-xs") do |form_control|
      form_control.input(:bordered, placeholder: "Type here") do |input|
        input.label do |label|
          label.text { "What is your name?" }
          label.alt_text { "Top right label" }
        end

        input.helper do |helper|
          helper.alt_text { "Bottom left label" }
          helper.alt_text { "Bottom right label" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::Input.new(:primary, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def secondary
    render DaisyUI::Components::Input.new(:secondary, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def accent
    render DaisyUI::Components::Input.new(:accent, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def info
    render DaisyUI::Components::Input.new(:info, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def success
    render DaisyUI::Components::Input.new(:success, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def warning
    render DaisyUI::Components::Input.new(:warning, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def error
    render DaisyUI::Components::Input.new(:error, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end
  # @!endgroup

  # @!group Sizes
  def large
    render DaisyUI::Components::Input.new(:lg, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def medium
    render DaisyUI::Components::Input.new(:md, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def small
    render DaisyUI::Components::Input.new(:sm, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end

  def extra_small
    render DaisyUI::Components::Input.new(:xs, :bordered, class: "w-full max-w-xs", placeholder: "Type here")
  end
  # @!endgroup
end
