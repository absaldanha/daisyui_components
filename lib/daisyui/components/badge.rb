# frozen_string_literal: true

module DaisyUI
  module Components
    class Badge < Base
      include PolymorphicElement

      self.component_class = "badge"

      self.default_element = :span

      modifier :outline, "badge-outline"
      modifier :primary, "badge-primary"
      modifier :secondary, "badge-secondary"
      modifier :accent, "badge-accent"
      modifier :ghost, "badge-ghost"
      modifier :info, "badge-info"
      modifier :success, "badge-success"
      modifier :warning, "badge-warning"
      modifier :error, "badge-error"
      modifier :lg, "badge-lg"
      modifier :md, "badge-md"
      modifier :sm, "badge-sm"
      modifier :xs, "badge-xs"

      def template(&)
        polymorphic_element(**full_props, &)
      end
    end
  end
end
