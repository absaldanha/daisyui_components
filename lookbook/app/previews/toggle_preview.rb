# frozen_string_literal: true

# @logical_path data_input
class TogglePreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Toggle.new(checked: true)
  end

  def with_label_and_form_control
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:primary, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def secondary
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:secondary, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def accent
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:accent, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def success
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:success, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def warning
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:warning, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def info
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:info, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def error
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:error, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
  # @!endgroup

  # @!group Sizes
  def extra_small
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:xs, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def small
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:sm, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def medium
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:md, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def large
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(:lg, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
  # @!endgroup

  def disabled
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(disabled: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def disabled_and_checked
    render DaisyUI::Components::FormControl.new(class: "w-40") do |form_control|
      form_control.toggle(disabled: true, checked: true) do |toggle|
        toggle.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
end
