# frozen_string_literal: true

module DaisyUI
  module Components
    class Rating < Base
      include Phlex::DeferredRender

      self.component_class = "rating"

      modifier :half, "rating-half"
      modifier :lg, "rating-lg"
      modifier :md, "rating-md"
      modifier :sm, "rating-sm"
      modifier :xs, "rating-xs"

      def initialize(...)
        @masks = []
        super(...)
      end

      def template
        div(**full_props) do
          masks.each do |mask|
            render mask
          end
        end
      end

      def mask(...)
        @masks << Mask.new(...)
      end

      private

      attr_reader :masks
    end
  end
end
