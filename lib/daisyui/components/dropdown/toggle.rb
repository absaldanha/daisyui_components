# frozen_string_literal: true

module DaisyUI
  module Components
    class Dropdown::Toggle < Base
      include PolymorphicElement

      self.default_props = {tabindex: "0"}

      self.default_element = :label

      def template(&)
        render Components::Button.new(element: element, **component_default_props, &)
      end
    end
  end
end
