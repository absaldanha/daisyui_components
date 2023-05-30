# frozen_string_literal: true

module DaisyUI
  module Components
    class Chat < Base
      include Phlex::DeferredRender

      self.component_class = "chat"

      modifier :start, "chat-start"
      modifier :end, "chat-end"

      def template
        div(**full_props) do
          render @avatar if @avatar
          render @header if @header
          render @bubble if @bubble
          render @footer if @footer
        end
      end

      def bubble(...)
        @bubble = Bubble.new(...)
      end

      def avatar(...)
        @avatar = Avatar.new(...)
      end

      def header(...)
        @header = Header.new(...)
      end

      def footer(...)
        @footer = Footer.new(...)
      end
    end
  end
end
