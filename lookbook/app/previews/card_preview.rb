# frozen_string_literal: true

class CardPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.figure do
        card.img(src: "/photo_card.jpg")
      end

      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end

  def compact
    render DaisyUI::Components::Card.new(:compact, class: "w-96 bg-base-100 shadow-xl") do |card|
      card.figure do
        card.img(src: "/photo_card.jpg")
      end

      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end

  def with_badge
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.figure do
        card.img(src: "/photo_card.jpg")
      end

      card.body do |body|
        body.title do
          body.plain "Shoes!"
          body.unsafe_raw(DaisyUI::Components::Badge.call(:secondary) { "NEW" })
        end
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Badge.call(:outline) { "Fashion" })
          body.unsafe_raw(DaisyUI::Components::Badge.call(:outline) { "Products" })
        end
      end
    end
  end

  def with_bottom_image
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end

      card.figure do
        card.img(src: "/photo_card.jpg")
      end
    end
  end

  def with_centered_content_and_paddings
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.figure(class: "px-10 pt-10") do
        card.img(src: "/photo_card.jpg", class: "rounded-xl")
      end

      card.body(class: "items-center text-center") do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end

  def with_full_image
    render DaisyUI::Components::Card.new(:full_image, class: "w-96 bg-base-100 shadow-xl") do |card|
      card.figure do
        card.img(src: "/photo_card.jpg")
      end

      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end

  def with_no_image
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end

  def with_custom_color
    render DaisyUI::Components::Card.new(class: "w-96 bg-primary text-primary-content") do |card|
      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call { "Buy Now" })
        end
      end
    end
  end

  def with_neutral_color
    render DaisyUI::Components::Card.new(class: "w-96 bg-neutral text-neutral-content") do |card|
      card.body(class: "items-center text-center") do |body|
        body.title { "Cookies!" }
        body.p { "We use cookies for no reason." }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "ACCEPT" })
          body.unsafe_raw(DaisyUI::Components::Button.call(:ghost) { "DENY" })
        end
      end
    end
  end

  def with_action_on_top
    render DaisyUI::Components::Card.new(class: "w-96 bg-base-100 shadow-xl") do |card|
      card.body do |body|
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:square, :sm) { "✖" })
        end

        body.p { "We are using cookies for no reason." }
      end
    end
  end

  def with_image_on_the_side
    render DaisyUI::Components::Card.new(:side, class: "bg-base-100 shadow-xl") do |card|
      card.figure do
        card.img(src: "/photo_card.jpg")
      end

      card.body do |body|
        body.title { "Shoes!" }
        body.p { "If a dog chews shoes whose shoes does he choose?" }
        body.actions(class: "justify-end") do
          body.unsafe_raw(DaisyUI::Components::Button.call(:primary) { "Buy Now" })
        end
      end
    end
  end
end
