# frozen_string_literal: true

module DaisyUI
  module Components
    class Chat::Footer < Base
      self.component_class = "chat-footer"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
