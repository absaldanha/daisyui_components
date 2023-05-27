# frozen_string_literal: true

module DaisyUI
  module Components
    class Dropdown::Menu < Base
      include PolymorphicElement

      self.component_class = "dropdown-content menu"

      self.default_props = {tabindex: "0"}

      self.default_element = :div

      def template(&)
        polymorphic_element(**full_props, &)
      end
    end
  end
end
