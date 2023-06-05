# frozen_string_literal: true

module DaisyUI
  module Components
    class Toggle < Base
      include Phlex::DeferredRender

      self.component_class = "toggle"

      modifier :primary, "toggle-primary"
      modifier :secondary, "toggle-secondary"
      modifier :accent, "toggle-accent"
      modifier :success, "toggle-success"
      modifier :warning, "toggle-warning"
      modifier :info, "toggle-info"
      modifier :error, "toggle-error"
      modifier :lg, "toggle-lg"
      modifier :md, "toggle-md"
      modifier :sm, "toggle-sm"
      modifier :xs, "toggle-xs"

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
