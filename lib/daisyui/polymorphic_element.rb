# frozen_string_literal: true

module DaisyUI
  module PolymorphicElement
    def self.included(base)
      base.extend(PolymorphicElement::ClassMethods)
    end

    module ClassMethods
      def self.extended(base)
        base.class_eval do
          class << self; attr_accessor :default_element; end
        end

        base.default_element = :div
      end
    end

    attr_reader :element

    def initialize(*args, element: nil, **kwargs, &block)
      @element = element || self.class.default_element
      super(*args, **kwargs, &block)
    end

    def polymorphic_element(*args, **kwargs, &block)
      public_send(element, *args, **kwargs, &block)
    end
  end
end
