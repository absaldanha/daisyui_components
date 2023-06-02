# frozen_string_literal: true

module DaisyUI
  module Components
    class Radio < Base
      include Phlex::DeferredRender

      self.component_class = "radio"

      modifier :primary, "radio-primary"
      modifier :secondary, "radio-secondary"
      modifier :accent, "radio-accent"
      modifier :success, "radio-success"
      modifier :warning, "radio-warning"
      modifier :info, "radio-info"
      modifier :error, "radio-error"
      modifier :lg, "radio-lg"
      modifier :md, "radio-md"
      modifier :sm, "radio-sm"
      modifier :xs, "radio-xs"

      def template
        if @label
          @label.content { input(**full_props, type: "radio") }

          render @label
        else
          input(**full_props, type: "radio")
        end
      end

      def label(...)
        @label = Label.new(:pointer, ...)
      end
    end
  end
end
