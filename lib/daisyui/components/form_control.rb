# frozen_string_literal: true

module DaisyUI
  module Components
    class FormControl < Base
      include Phlex::DeferredRender

      self.component_class = "form-control"

      def template
        div(**full_props) do
          render control if control
        end
      end

      def checkbox(...)
        @control = Checkbox.new(...)
      end

      def file_input(...)
        @control = FileInput.new(...)
      end

      def radio(...)
        @control = Radio.new(...)
      end

      def select(...)
        @control = Select.new(...)
      end

      def input(...)
        @control = Input.new(...)
      end

      private

      attr_reader :control
    end
  end
end
