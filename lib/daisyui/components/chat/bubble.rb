# frozen_string_literal: true

module DaisyUI
  module Components
    class Chat::Bubble < Base
      self.component_class = "chat-bubble"

      modifier :primary, "chat-bubble-primary"
      modifier :secondary, "chat-bubble-secondary"
      modifier :accent, "chat-bubble-accent"
      modifier :info, "chat-bubble-info"
      modifier :success, "chat-bubble-success"
      modifier :warning, "chat-bubble-warning"
      modifier :error, "chat-bubble-error"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
