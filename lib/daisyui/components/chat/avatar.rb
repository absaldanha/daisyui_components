# frozen_string_literal: true

module DaisyUI
  module Components
    class Chat::Avatar < Base
      self.component_class = "chat-image"

      def template(&)
        render Components::Avatar.new(**full_props, &)
      end
    end
  end
end
