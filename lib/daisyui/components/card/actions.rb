# frozen_string_literal: true

module DaisyUI
  module Components
    class Card::Actions < Base
      self.component_class = "card-actions"

      def template(&)
        div(**full_props, &)
      end
    end
  end
end
