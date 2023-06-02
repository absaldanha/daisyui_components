# frozen_string_literal: true

module DaisyUI
  module Components
    class Checkbox < Base
      include Phlex::DeferredRender

      self.component_class = "checkbox"

      modifier :primary, "checkbox-primary"
      modifier :secondary, "checkbox-secondary"
      modifier :accent, "checkbox-accent"
      modifier :success, "checkbox-success"
      modifier :warning, "checkbox-warning"
      modifier :info, "checkbox-info"
      modifier :error, "checkbox-error"
      modifier :lg, "checkbox-lg"
      modifier :md, "checkbox-md"
      modifier :sm, "checkbox-sm"
      modifier :xs, "checkbox-xs"

      def template
        if @label
          @label.content { input(**full_props, type: "checkbox") }

          render @label
        else
          input(**full_props, type: "checkbox")
        end
      end

      def label(...)
        @label = Label.new(:pointer, ...)
      end
    end
  end
end
