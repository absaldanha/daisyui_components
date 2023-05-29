# frozen_string_literal: true

module DaisyUI
  module Components
    class Card < Base
      self.component_class = "card"

      modifier :bordered, "card-bordered"
      modifier :full_image, "image-full"
      modifier :normal, "card-normal"
      modifier :compact, "card-compact"
      modifier :side, "card-side"

      def template(&)
        div(**full_props, &)
      end

      def body(...)
        render Body.new(...)
      end
    end
  end
end
