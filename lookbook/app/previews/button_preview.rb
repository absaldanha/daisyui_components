# frozen_string_literal: true

# @logical_path actions
class ButtonPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Button.new { "Button" }
  end

  # @!group Brand Colors
  def default_color
    render DaisyUI::Components::Button.new { "Button" }
  end

  def primary
    render DaisyUI::Components::Button.new(:primary) { "Button" }
  end

  def secondary
    render DaisyUI::Components::Button.new(:secondary) { "Button" }
  end

  def accent
    render DaisyUI::Components::Button.new(:accent) { "Button" }
  end

  def ghost
    render DaisyUI::Components::Button.new(:ghost) { "Button" }
  end

  def link
    render DaisyUI::Components::Button.new(:link) { "Button" }
  end
  # @!endgroup

  # @!group Active Buttons
  def default_active
    render DaisyUI::Components::Button.new(:active) { "Button" }
  end

  def primary_active
    render DaisyUI::Components::Button.new(:primary, :active) { "Button" }
  end

  def secondary_active
    render DaisyUI::Components::Button.new(:secondary, :active) { "Button" }
  end

  def accent_active
    render DaisyUI::Components::Button.new(:accent, :active) { "Button" }
  end

  def ghost_active
    render DaisyUI::Components::Button.new(:ghost, :active) { "Button" }
  end

  def link_active
    render DaisyUI::Components::Button.new(:link, :active) { "Button" }
  end
  # @!endgroup

  # @!group State Colors
  def info
    render DaisyUI::Components::Button.new(:info) { "Button" }
  end

  def success
    render DaisyUI::Components::Button.new(:success) { "Button" }
  end

  def warning
    render DaisyUI::Components::Button.new(:warning) { "Button" }
  end

  def error
    render DaisyUI::Components::Button.new(:error) { "Button" }
  end
  # @!endgroup

  # @!group Outiline Buttons
  def default_outline
    render DaisyUI::Components::Button.new(:outline) { "Button" }
  end

  def primary_outline
    render DaisyUI::Components::Button.new(:primary, :outline) { "Button" }
  end

  def secondary_outline
    render DaisyUI::Components::Button.new(:secondary, :outline) { "Button" }
  end

  def accent_outline
    render DaisyUI::Components::Button.new(:accent, :outline) { "Button" }
  end
  # @!endgroup

  # @!group Outline with State Colors
  def info_outline
    render DaisyUI::Components::Button.new(:info, :outline) { "Button" }
  end

  def success_outline
    render DaisyUI::Components::Button.new(:success, :outline) { "Button" }
  end

  def warning_outline
    render DaisyUI::Components::Button.new(:warning, :outline) { "Button" }
  end

  def error_outline
    render DaisyUI::Components::Button.new(:error, :outline) { "Button" }
  end
  # @!endgroup

  # @!group Sizes
  def lg
    render DaisyUI::Components::Button.new(:lg) { "Button" }
  end

  def md
    render DaisyUI::Components::Button.new(:md) { "Button" }
  end

  def sm
    render DaisyUI::Components::Button.new(:sm) { "Button" }
  end

  def xs
    render DaisyUI::Components::Button.new(:xs) { "Button" }
  end
  # @!endgroup

  def wide
    render DaisyUI::Components::Button.new(:wide) { "Button" }
  end

  def glass
    render DaisyUI::Components::Button.new(:glass) { "Button" }
  end

  def disabled
    render DaisyUI::Components::Button.new(:disabled) { "Button" }
  end

  # @!group Button with different HTML tags
  def anchor_button
    render DaisyUI::Components::Button.new(element: :a) { "Link" }
  end

  def button
    render DaisyUI::Components::Button.new { "Button" }
  end

  def input_button
    render DaisyUI::Components::Button.new(element: :input, type: "button", value: "Button")
  end

  def submit_button
    render DaisyUI::Components::Button.new(element: :input, type: "submit", value: "Submit")
  end

  def reset_button
    render DaisyUI::Components::Button.new(element: :input, type: "reset", value: "Reset")
  end
  # @!endgroup

  # @!group Square Button
  def square
    render DaisyUI::Components::Button.new(:square) { "X" }
  end

  def square_outline
    render DaisyUI::Components::Button.new(:square, :outline) { "X" }
  end
  # @!endgroup

  # @!group Circle Button
  def circle
    render DaisyUI::Components::Button.new(:circle) { "X" }
  end

  def circle_outline
    render DaisyUI::Components::Button.new(:circle, :outline) { "X" }
  end
  # @!endgroup

  def block
    render DaisyUI::Components::Button.new(:block) { "Button" }
  end

  def loading
    render DaisyUI::Components::Button.new(:circle, :loading)
  end

  def loading_with_text
    render DaisyUI::Components::Button.new(:loading) { "Loading" }
  end

  def without_click_animation
    render DaisyUI::Components::Button.new(:no_animation) { "Button" }
  end
end
