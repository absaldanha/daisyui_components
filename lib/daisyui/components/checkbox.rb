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
          @label.content { input(type: "checkbox", **full_props) }

          render @label
        else
          input(type: "checkbox", **full_props)
        end
      end

      def label(...)
        @label = Label.new(:pointer, ...)
      end
    end
  end
end
