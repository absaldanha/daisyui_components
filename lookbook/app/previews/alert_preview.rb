# frozen_string_literal: true

class AlertPreview < Lookbook::Preview
  class WithButtons < Phlex::HTML
    def template
      render DaisyUI::Components::Alert.new(class: "shadow-lg") do |alert|
        div do
          plain "❕"
          span { "We use some cookies." }
        end

        div(class: "flex-none") do
          render DaisyUI::Components::Button.new(:sm, :ghost) { "Deny" }
          render DaisyUI::Components::Button.new(:sm, :primary) { "Accept" }
        end
      end
    end
  end

  def default
    render DaisyUI::Components::Alert.new(class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "❕"
        alert.span { "12 unread messages. Tap to see." }
      end
    end
  end

  # @group Colors
  def info
    render DaisyUI::Components::Alert.new(:info, class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "❕"
        alert.span { "New software update available." }
      end
    end
  end

  def success
    render DaisyUI::Components::Alert.new(:success, class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "✔"
        alert.span { "Your purchase has been confirmed!" }
      end
    end
  end

  def warning
    render DaisyUI::Components::Alert.new(:warning, class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "🌨"
        alert.span { "Risk of rain!" }
      end
    end
  end

  def error
    render DaisyUI::Components::Alert.new(:error, class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "✖"
        alert.span { "Something went wrong." }
      end
    end
  end
  # @endgroup

  def with_buttons
    render DaisyUI::Components::Alert.new(class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "❕"
        alert.span { "We use some cookies." }
      end

      alert.div(class: "flex-none") do
        alert.button(class: "btn btn-sm btn-ghost") { "Deny" }
        alert.button(class: "btn btn-sm btn-primary") { "Accept" }
      end
    end
  end

  def with_title_and_description
    render DaisyUI::Components::Alert.new(class: "shadow-lg") do |alert|
      alert.div do
        alert.plain "❕"
        alert.div do
          alert.h3(class: "font-bold") { "New message!" }
          alert.div(class: "text-sm") { "You have 1 unread message" }
        end
      end

      alert.div(class: "flex-none") do
        alert.button(class: "btn btn-sm") { "See" }
      end
    end
  end
end
