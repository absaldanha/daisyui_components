# frozen_string_literal: true

module DaisyUI
  module Components
    class Input < Base
      prepend LabelledControl

      self.component_class = "input"
      self.default_props = {type: "text"}

      modifier :bordered, "input-bordered"
      modifier :ghost, "input-ghost"
      modifier :primary, "input-primary"
      modifier :secondary, "input-secondary"
      modifier :accent, "input-accent"
      modifier :info, "input-info"
      modifier :success, "input-success"
      modifier :warning, "input-warning"
      modifier :error, "input-error"
      modifier :lg, "input-lg"
      modifier :md, "input-md"
      modifier :sm, "input-sm"
      modifier :xs, "input-xs"

      def template
        input(**full_props)
      end
    end
  end
end
