# frozen_string_literal: true

module DaisyUI
  module Components
    class Label::Text < Base
      modifier :alt, ""

      def template(&)
        span(**full_props, &)
      end

      protected

      def full_props
        hash = super
        hash.merge(class: tokens(hash[:class], label_class))
      end

      private

      def label_class
        modifier?(:alt) ? "label-text-alt" : "label-text"
      end
    end
  end
end
