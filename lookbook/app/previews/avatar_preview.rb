# frozen_string_literal: true

# @logical_path data_display
class AvatarPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 rounded") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  # @!group Sizes
  def large_avatar
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-32 rounded") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def medium_avatar
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-20 rounded") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def small_avatar
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-16 rounded") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def extra_small_avatar
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-8 rounded") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end
  # @!endgroup

  def rounded
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 rounded-full") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  # @!group With Mask
  def squircle
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 mask mask-squircle") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def hexagon
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 mask mask-hexagon") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def triangle
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 mask mask-triangle") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end
  # @!endgroup

  def group
    render DaisyUI::Components::AvatarGroup.new(class: "-space-x-6") do |group|
      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end
    end
  end

  def group_with_counter
    render DaisyUI::Components::AvatarGroup.new(class: "-space-x-6") do |group|
      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar do
        group.div(class: "w-12") do
          group.img(src: "/photo_avatar.jpg")
        end
      end

      group.avatar(:placeholder) do
        group.div(class: "w-12 bg-neutral-focus text-neutral-content") do
          group.span { "+99" }
        end
      end
    end
  end

  def with_ring
    render DaisyUI::Components::Avatar.new do |avatar|
      avatar.div(class: "w-24 rounded-full ring ring-primary ring-offset-base-100 ring-offset-2") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  # @!group With Presence Indicator
  def online
    render DaisyUI::Components::Avatar.new(:online) do |avatar|
      avatar.div(class: "w-24 rounded-full") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end

  def offline
    render DaisyUI::Components::Avatar.new(:offline) do |avatar|
      avatar.div(class: "w-24 rounded-full") do
        avatar.img(src: "/photo_avatar.jpg")
      end
    end
  end
  # @!endgroup

  # @!group Avatar Placeholder
  def large_placeholder
    render DaisyUI::Components::Avatar.new(:placeholder) do |avatar|
      avatar.div(class: "bg-neutral-focus text-neutral-content rounded-full w-24") do
        avatar.span(class: "text-3xl") { "ABS" }
      end
    end
  end

  def medium_placeholder
    render DaisyUI::Components::Avatar.new(:placeholder) do |avatar|
      avatar.div(class: "bg-neutral-focus text-neutral-content rounded-full w-16") do
        avatar.span(class: "text-xl") { "NMO" }
      end
    end
  end

  def small_placeholder
    render DaisyUI::Components::Avatar.new(:placeholder) do |avatar|
      avatar.div(class: "bg-neutral-focus text-neutral-content rounded-full w-12") do
        avatar.span { "BOS" }
      end
    end
  end

  def extra_small_placeholder
    render DaisyUI::Components::Avatar.new(:placeholder) do |avatar|
      avatar.div(class: "bg-neutral-focus text-neutral-content rounded-full w-8") do
        avatar.span(class: "text-xs") { "FOO" }
      end
    end
  end
  # @!endgroup
end
