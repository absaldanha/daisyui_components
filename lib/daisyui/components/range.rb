# frozen_string_literal: true

module DaisyUI
  module Components
    class Range < Base
      include Phlex::DeferredRender

      self.component_class = "range"

      modifier :primary, "range-primary"
      modifier :secondary, "range-secondary"
      modifier :accent, "range-accent"
      modifier :success, "range-success"
      modifier :warning, "range-warning"
      modifier :info, "range-info"
      modifier :error, "range-error"
      modifier :lg, "range-lg"
      modifier :md, "range-md"
      modifier :sm, "range-sm"
      modifier :xs, "range-xs"

      def template
        input(**full_props, type: "range")
        render @steps if @steps
      end

      def steps(value, ...)
        @steps = Steps.new(value, ...)
      end
    end
  end
end
