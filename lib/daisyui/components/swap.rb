# frozen_string_literal: true

module DaisyUI
  module Components
    class Swap < Base
      include Phlex::DeferredRender

      self.component_class = "swap"

      modifier :active, "swap-active"
      modifier :rotate, "swap-rotate"
      modifier :flip, "swap-flip"

      def template
        label(**full_props) do
          input(type: "checkbox") unless modifier?(:active)
          render @on if @on
          render @off if @off
        end
      end

      def on(...)
        @on = Toggle.new(:on, ...)
      end

      def off(...)
        @off = Toggle.new(:off, ...)
      end
    end
  end
end
