# frozen_string_literal: true

module DaisyUI
  module Components
    class Chat::Header < Base
      self.component_class = "chat-header"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
