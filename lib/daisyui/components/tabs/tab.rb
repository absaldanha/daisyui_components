# frozen_string_literal: true

module DaisyUI
  module Components
    class Tabs::Tab < Base
      self.component_class = "tab"

      modifier :active, "tab-active"
      modifier :disabled, "tab-disabled"
      modifier :bordered, "tab-bordered"
      modifier :lifted, "tab-lifted"
      modifier :xs, "tab-xs"
      modifier :sm, "tab-sm"
      modifier :md, "tab-md"
      modifier :lg, "tab-lg"

      def template(&)
        a(**full_props, &)
      end
    end
  end
end
