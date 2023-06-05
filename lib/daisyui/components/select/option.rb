# frozen_string_literal: true

module DaisyUI
  module Components
    class Select::Option < Base
      def template(&)
        option(**full_props, &)
      end
    end
  end
end
