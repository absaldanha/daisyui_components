# frozen_string_literal: true

# @logical_path data_display
class BadgePreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Badge.new { "Badge" }
  end

  # @!group Colors
  def neutral
    render DaisyUI::Components::Badge.new(element: :div) { "Neutral" }
  end

  def primary
    render DaisyUI::Components::Badge.new(:primary, element: :div) { "Primary" }
  end

  def secondary
    render DaisyUI::Components::Badge.new(:secondary, element: :div) { "Secondary" }
  end

  def accent
    render DaisyUI::Components::Badge.new(:accent, element: :div) { "Accent" }
  end

  def ghost
    render DaisyUI::Components::Badge.new(:ghost, element: :div) { "Ghost" }
  end
  # @!endgroup

  # @!group Outline Colors
  def neutral_outline
    render DaisyUI::Components::Badge.new(:outline, element: :div) { "Neutral" }
  end

  def primary_outline
    render DaisyUI::Components::Badge.new(:primary, :outline, element: :div) { "Primary" }
  end

  def secondary_outline
    render DaisyUI::Components::Badge.new(:secondary, :outline, element: :div) { "Secondary" }
  end

  def accent_outline
    render DaisyUI::Components::Badge.new(:accent, :outline, element: :div) { "Accent" }
  end
  # @!endgroup

  # @!group Sizes
  def large
    render DaisyUI::Components::Badge.new(:lg, element: :div) { "987,654" }
  end

  def medium
    render DaisyUI::Components::Badge.new(:md, element: :div) { "987,654" }
  end

  def small
    render DaisyUI::Components::Badge.new(:sm, element: :div) { "987,654" }
  end

  def extra_small
    render DaisyUI::Components::Badge.new(:xs, element: :div) { "987,654" }
  end
  # @!endgroup

  # @!group Empty
  def large_empty
    render DaisyUI::Components::Badge.new(:lg, element: :div)
  end

  def medium_empty
    render DaisyUI::Components::Badge.new(:md, element: :div)
  end

  def small_empty
    render DaisyUI::Components::Badge.new(:sm, element: :div)
  end

  def extra_small_empty
    render DaisyUI::Components::Badge.new(:xs, element: :div)
  end
  # @!endgroup

  # @!group In a Text
  def large_text
  end

  def medium_text
  end

  def small_text
  end

  def extra_small_text
  end
  # @!endgroup

  # @!group In a Button
  def button_badge
    render DaisyUI::Components::Button.new(class: "gap-2") do |button|
      button.plain "Inbox"
      button.unsafe_raw(DaisyUI::Components::Badge.call { "+99" })
    end
  end

  def button_badge_primary
    render DaisyUI::Components::Button.new(class: "gap-2") do |button|
      button.plain "Inbox"
      button.unsafe_raw(DaisyUI::Components::Badge.call(:primary) { "+99" })
    end
  end
  # @!endgroup
end
