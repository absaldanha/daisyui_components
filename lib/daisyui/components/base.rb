# frozen_string_literal: true

module DaisyUI
  module Components
    class Base < Phlex::HTML
      attr_reader :modifiers
      attr_reader :props

      def self.inherited(subclass)
        subclass.modifiers = []
      end

      class << self
        attr_accessor :modifiers
        attr_accessor :component_class

        def modifier(name, *classes)
          self.modifiers << [name, classes]
        end
      end

      def initialize(*modifiers, **props, &block)
        super(&block)

        @modifiers = Array(modifiers)
        @props = Hash(props)
      end

      protected

      def full_props
        props.dup
          .then { |hash| apply_component_class(hash) }
          .then { |hash| apply_modifiers(hash) }
      end

      def apply_component_class(hash)
        hash[:class] = tokens(hash[:class], component_class)
        hash
      end

      def apply_modifiers(hash)
        modifier_classes = applicable_modifers
          .map { |modifier| modifier[1] }
          .flatten

        hash[:class] = tokens(hash[:class], *modifier_classes)
        hash
      end

      def applicable_modifers
        component_modifiers.select do |component_modifier|
          modifiers.include?(component_modifier.first)
        end
      end

      def component_modifiers
        self.class.modifiers
      end

      def component_class
        self.class.component_class
      end
    end
  end
end
