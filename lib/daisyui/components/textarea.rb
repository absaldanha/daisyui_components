# frozen_string_literal: true

module DaisyUI
  module Components
    class Textarea < Base
      prepend LabelledControl

      self.component_class = "textarea"

      modifier :bordered, "textarea-bordered"
      modifier :ghost, "textarea-ghost"
      modifier :primary, "textarea-primary"
      modifier :secondary, "textarea-secondary"
      modifier :accent, "textarea-accent"
      modifier :info, "textarea-info"
      modifier :success, "textarea-success"
      modifier :warning, "textarea-warning"
      modifier :error, "textarea-error"
      modifier :lg, "textarea-lg"
      modifier :md, "textarea-md"
      modifier :sm, "textarea-sm"
      modifier :xs, "textarea-xs"

      def template
        textarea(**full_props)
      end
    end
  end
end
