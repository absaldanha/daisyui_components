# frozen_string_literal: true

module DaisyUI
  module Components
    class Button < Base
      include PolymorphicElement

      self.default_element = :button

      self.component_class = "btn"

      modifier :primary, "btn-primary"
      modifier :secondary, "btn-secondary"
      modifier :accent, "btn-accent"
      modifier :info, "btn-info"
      modifier :success, "btn-success"
      modifier :warning, "btn-warning"
      modifier :error, "btn-error"
      modifier :ghost, "btn-ghost"
      modifier :link, "btn-link"
      modifier :outline, "btn-outline"
      modifier :active, "btn-active"
      modifier :disabled, "btn-disabled"
      modifier :glass, "glass"
      modifier :loading, "loading"
      modifier :no_animation, "no-animation"
      modifier :lg, "btn-lg"
      modifier :md, "btn-md"
      modifier :sm, "btn-sm"
      modifier :xs, "btn-xs"
      modifier :wide, "btn-wide"
      modifier :block, "btn-block"
      modifier :circle, "btn-circle"
      modifier :square, "btn-square"

      def template(&)
        polymorphic_element(**full_props, &)
      end
    end
  end
end
