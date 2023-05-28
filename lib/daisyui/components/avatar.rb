# frozen_string_literal: true

module DaisyUI
  module Components
    class Avatar < Base
      self.component_class = "avatar"

      modifier :online, "online"
      modifier :offline, "offline"
      modifier :placeholder, "placeholder"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
