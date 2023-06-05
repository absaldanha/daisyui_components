# frozen_string_literal: true

# @logical_path data_input
class RatingPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Rating.new do |rating|
      rating.mask(:star, name: "rating-1")
      rating.mask(:star, name: "rating-1", checked: true)
      rating.mask(:star, name: "rating-1")
      rating.mask(:star, name: "rating-1")
      rating.mask(:star, name: "rating-1")
    end
  end

  def star_2_with_orange_color
    render DaisyUI::Components::Rating.new do |rating|
      rating.mask(:star_2, name: "rating-1", class: "bg-warning")
      rating.mask(:star_2, name: "rating-1", checked: true, class: "bg-warning")
      rating.mask(:star_2, name: "rating-1", class: "bg-warning")
      rating.mask(:star_2, name: "rating-1", class: "bg-warning")
      rating.mask(:star_2, name: "rating-1", class: "bg-warning")
    end
  end

  def heart_with_multiple_colors
    render DaisyUI::Components::Rating.new do |rating|
      rating.mask(:heart, name: "rating-1", class: "bg-error")
      rating.mask(:heart, name: "rating-1", checked: true, class: "bg-warning")
      rating.mask(:heart, name: "rating-1", class: "bg-info")
      rating.mask(:heart, name: "rating-1", class: "bg-success")
      rating.mask(:heart, name: "rating-1", class: "bg-primary")
    end
  end

  # @!group Sizes
  def extra_small
    render DaisyUI::Components::Rating.new(:xs) do |rating|
      rating.mask(:star_2, name: "rating-extra-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-extra-small", checked: true, class: "bg-warning")
      rating.mask(:star_2, name: "rating-extra-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-extra-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-extra-small", class: "bg-warning")
    end
  end

  def small
    render DaisyUI::Components::Rating.new(:sm) do |rating|
      rating.mask(:star_2, name: "rating-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-small", checked: true, class: "bg-warning")
      rating.mask(:star_2, name: "rating-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-small", class: "bg-warning")
      rating.mask(:star_2, name: "rating-small", class: "bg-warning")
    end
  end

  def medium
    render DaisyUI::Components::Rating.new(:md) do |rating|
      rating.mask(:star_2, name: "rating-medium", class: "bg-warning")
      rating.mask(:star_2, name: "rating-medium", checked: true, class: "bg-warning")
      rating.mask(:star_2, name: "rating-medium", class: "bg-warning")
      rating.mask(:star_2, name: "rating-medium", class: "bg-warning")
      rating.mask(:star_2, name: "rating-medium", class: "bg-warning")
    end
  end

  def large
    render DaisyUI::Components::Rating.new(:lg) do |rating|
      rating.mask(:star_2, name: "rating-large", class: "bg-warning")
      rating.mask(:star_2, name: "rating-large", checked: true, class: "bg-warning")
      rating.mask(:star_2, name: "rating-large", class: "bg-warning")
      rating.mask(:star_2, name: "rating-large", class: "bg-warning")
      rating.mask(:star_2, name: "rating-large", class: "bg-warning")
    end
  end
  # @!endgroup

  def with_rating_hidden
    render DaisyUI::Components::Rating.new(:lg) do |rating|
      rating.mask(:hidden, name: "rating-1")
      rating.mask(:star_2, name: "rating-1")
      rating.mask(:star_2, name: "rating-1", checked: true)
      rating.mask(:star_2, name: "rating-1")
      rating.mask(:star_2, name: "rating-1")
      rating.mask(:star_2, name: "rating-1")
    end
  end

  def half_stars
    render DaisyUI::Components::Rating.new(:lg, :half) do |rating|
      rating.mask(:star_2, :first_half, name: "rating-1")
      rating.mask(:star_2, :second_half, name: "rating-1")
      rating.mask(:star_2, :first_half, name: "rating-1", checked: true)
      rating.mask(:star_2, :second_half, name: "rating-1")
      rating.mask(:star_2, :first_half, name: "rating-1")
      rating.mask(:star_2, :second_half, name: "rating-1")
      rating.mask(:star_2, :first_half, name: "rating-1")
      rating.mask(:star_2, :second_half, name: "rating-1")
      rating.mask(:star_2, :first_half, name: "rating-1")
      rating.mask(:star_2, :second_half, name: "rating-1")
    end
  end
end
