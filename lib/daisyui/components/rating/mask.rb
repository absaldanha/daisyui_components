# frozen_string_literal: true

module DaisyUI
  module Components
    class Rating::Mask < Base
      self.component_class = "mask"

      modifier :star, "mask-star"
      modifier :star_2, "mask-star-2"
      modifier :heart, "mask-heart"
      modifier :first_half, "mask-half-1"
      modifier :second_half, "mask-half-2"
      modifier :hidden, "rating-hidden"

      def template
        input(**full_props, type: "radio")
      end
    end
  end
end
