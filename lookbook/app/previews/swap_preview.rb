# frozen_string_literal: true

# @logical_path actions
class SwapPreview < Lookbook::Preview
  def swap_text
    render DaisyUI::Components::Swap.new do |swap|
      swap.on { "ON" }
      swap.off { "OFF" }
    end
  end

  def swap_volume_icons
    render DaisyUI::Components::Swap.new do |swap|
      swap.on(style: "font-size: 100px;") { "🔊" }
      swap.off(style: "font-size: 100px;") { "🔈" }
    end
  end

  def swap_with_rotate
    render DaisyUI::Components::Swap.new(:rotate) do |swap|
      swap.on(style: "font-size: 100px;") { "🌞" }
      swap.off(style: "font-size: 100px;") { "🌜" }
    end
  end

  def swap_with_flip
    render DaisyUI::Components::Swap.new(:flip) do |swap|
      swap.on(style: "font-size: 100px;") { "😈" }
      swap.off(style: "font-size: 100px;") { "😇" }
    end
  end

  def swap_active
    render DaisyUI::Components::Swap.new(:active) do |swap|
      swap.on(style: "font-size: 100px;") { "🥳" }
      swap.off(style: "font-size: 100px;") { "😭" }
    end
  end
end
