# frozen_string_literal: true

module DaisyUI
  module Components
    class Range::Steps < Base
      attr_reader :value

      self.default_props = {class: "w-full flex justify-between text-xs px-2"}

      def initialize(value, ...)
        @value = value
        super(...)
      end

      def template
        div(**full_props) do
          value.times do
            span { "|" }
          end
        end
      end
    end
  end
end
