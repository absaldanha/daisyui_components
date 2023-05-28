# frozen_string_literal: true

module DaisyUI
  module Components
    class Swap::Toggle < Base
      include PolymorphicElement

      self.default_element = :div

      modifier :on, "swap-on"
      modifier :off, "swap-off"

      def template(&)
        polymorphic_element(**full_props, &)
      end
    end
  end
end
