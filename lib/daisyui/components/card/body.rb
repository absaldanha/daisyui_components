# frozen_string_literal: true

module DaisyUI
  module Components
    class Card::Body < Base
      self.component_class = "card-body"

      def template(&)
        div(**full_props, &)
      end

      def title(...)
        render Card::Title.new(...)
      end

      def actions(...)
        render Card::Actions.new(...)
      end
    end
  end
end
