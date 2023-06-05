# frozen_string_literal: true

# @logical_path data_input
class RangePreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Range.new(min: 0, max: 100, value: 40)
  end

  def with_steps_and_measure
    render DaisyUI::Components::Range.new(min: 0, max: 100, value: 25, step: 25) do |range|
      range.steps(5)
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::Range.new(:primary, min: 0, max: 100, value: 40)
  end

  def secondary
    render DaisyUI::Components::Range.new(:secondary, min: 0, max: 100, value: 40)
  end

  def accent
    render DaisyUI::Components::Range.new(:accent, min: 0, max: 100, value: 40)
  end

  def info
    render DaisyUI::Components::Range.new(:info, min: 0, max: 100, value: 40)
  end

  def success
    render DaisyUI::Components::Range.new(:success, min: 0, max: 100, value: 40)
  end

  def warning
    render DaisyUI::Components::Range.new(:warning, min: 0, max: 100, value: 40)
  end

  def error
    render DaisyUI::Components::Range.new(:error, min: 0, max: 100, value: 40)
  end
  # @!endgroup

  # @!group Sizes
  def extra_small
    render DaisyUI::Components::Range.new(:xs, min: 0, max: 100, value: 40)
  end

  def small
    render DaisyUI::Components::Range.new(:sm, min: 0, max: 100, value: 40)
  end

  def medium
    render DaisyUI::Components::Range.new(:md, min: 0, max: 100, value: 40)
  end

  def large
    render DaisyUI::Components::Range.new(:lg, min: 0, max: 100, value: 40)
  end
  # @!endgroup
end
