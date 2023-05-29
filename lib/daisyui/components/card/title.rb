# frozen_string_literal: true

module DaisyUI
  module Components
    class Card::Title < Base
      include PolymorphicElement

      self.component_class = "card-title"

      self.default_element = :h2

      def template(&)
        polymorphic_element(**full_props, &)
      end
    end
  end
end
