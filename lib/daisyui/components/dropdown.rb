# frozen_string_literal: true

module DaisyUI
  module Components
    class Dropdown < Base
      include Phlex::DeferredRender

      self.component_class = "dropdown"

      modifier :end, "dropdown-end"
      modifier :top, "dropdown-top"
      modifier :bottom, "dropdown-bottom"
      modifier :left, "dropdown-left"
      modifier :right, "dropdown-right"
      modifier :hover, "dropdown-hover"
      modifier :open, "dropdown-open"

      def template(&)
        div(**full_props) do
          render @toggle if @toggle
          render @menu if @menu
        end
      end

      def toggle(...)
        @toggle = Toggle.new(...)
      end

      def menu(...)
        @menu = Menu.new(...)
      end
    end
  end
end
