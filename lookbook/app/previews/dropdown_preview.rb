# frozen_string_literal: true

# @logical_path actions
class DropdownPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Dropdown.new do |dropdown|
      dropdown.toggle { "Click" }
      dropdown.menu(element: :ul, class: "p-2 shadow bg-base-100 rounded-box w-52") do
        # Using dropdown to render on lookbook
        dropdown.li do
          dropdown.a { "Item 1" }
        end

        dropdown.li do
          dropdown.a { "Item 2" }
        end
      end
    end
  end

  def aligns_to_end
  end

  def top
  end

  def top_aligns_to_end
  end

  def bottom
    render DaisyUI::Components::Dropdown.new(:bottom) do |dropdown|
      dropdown.toggle { "Click" }
      dropdown.menu(element: :ul, class: "p-2 shadow bg-base-100 rounded-box w-52") do
        # Using dropdown to render on lookbook
        dropdown.li do
          dropdown.a { "Item 1" }
        end

        dropdown.li do
          dropdown.a { "Item 2" }
        end
      end
    end
  end

  def bottom_aligns_to_end
  end

  def left
  end

  def left_aligns_to_end
  end

  def right
    render DaisyUI::Components::Dropdown.new(:right) do |dropdown|
      dropdown.toggle { "Click" }
      dropdown.menu(element: :ul, class: "p-2 shadow bg-base-100 rounded-box w-52") do
        # Using dropdown to render on lookbook
        dropdown.li do
          dropdown.a { "Item 1" }
        end

        dropdown.li do
          dropdown.a { "Item 2" }
        end
      end
    end
  end

  def right_aligns_to_end
  end

  def hover
    render DaisyUI::Components::Dropdown.new(:hover) do |dropdown|
      dropdown.toggle { "Hover" }
      dropdown.menu(element: :ul, class: "p-2 shadow bg-base-100 rounded-box w-52") do
        # Using dropdown to render on lookbook
        dropdown.li do
          dropdown.a { "Item 1" }
        end

        dropdown.li do
          dropdown.a { "Item 2" }
        end
      end
    end
  end

  def force_open
    render DaisyUI::Components::Dropdown.new(:open) do |dropdown|
      dropdown.toggle { "Click" }
      dropdown.menu(element: :ul, class: "p-2 shadow bg-base-100 rounded-box w-52") do
        # Using dropdown to render on lookbook
        dropdown.li do
          dropdown.a { "Item 1" }
        end

        dropdown.li do
          dropdown.a { "Item 2" }
        end
      end
    end
  end
end
