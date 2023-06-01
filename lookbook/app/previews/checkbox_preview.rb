# frozen_string_literal: true

class CheckboxPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Checkbox.new(checked: true)
  end

  def with_label_and_form_control
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:primary, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def secondary
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:secondary, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def accent
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:accent, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def success
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:success, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def warning
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:warning, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def info
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:info, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def error
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:error, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
  # @!endgroup

  # @!group Sizes
  def extra_small
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:xs, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def small
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:sm, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def medium
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:md, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def large
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(:lg, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
  # @!endgroup

  def disabled
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(disabled: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end

  def disabled_and_checked
    render DaisyUI::Components::FormControl.new(class: "w-32") do |form_control|
      form_control.checkbox(disabled: true, checked: true) do |checkbox|
        checkbox.label do |label|
          label.text { "Remember me" }
        end
      end
    end
  end
end
