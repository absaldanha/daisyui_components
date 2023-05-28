# frozen_string_literal: true

module DaisyUI
  module Components
    class Alert < Base
      self.component_class = "alert"

      modifier :info, "alert-info"
      modifier :success, "alert-success"
      modifier :warning, "alert-warning"
      modifier :error, "alert-error"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
