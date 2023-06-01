# frozen_string_literal: true

module DaisyUI
  module Components
    class Label < Base
      include Phlex::DeferredRender

      self.component_class = "label"

      modifier :pointer, "cursor-pointer"

      def initialize(...)
        @alt_texts = []
        super(...)
      end

      def template
        label(**full_props) do
          render @text if @text

          @alt_texts.each do |alt_text|
            render alt_text
          end

          @content&.call
        end
      end

      def text(...)
        @text = Text.new(...)
      end

      def alt_text(...)
        @alt_texts << Text.new(:alt, ...)
      end

      def content(&block)
        @content = block
      end

      private

      attr_reader :texts
    end
  end
end
