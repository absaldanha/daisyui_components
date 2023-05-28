# frozen_string_literal: true

module DaisyUI
  module Components
    class Base < Phlex::HTML
      attr_reader :modifiers
      attr_reader :props

      def self.inherited(subclass)
        subclass.modifiers = modifiers.dup
        subclass.component_class = component_class.dup
        subclass.default_props = default_props.dup
      end

      class << self
        attr_writer :modifiers
        attr_accessor :component_class
        attr_writer :default_props

        def modifier(name, *classes)
          modifiers << [name, classes]
        end

        def modifiers
          @modifiers ||= []
        end

        def default_props
          @default_props ||= {}
        end
      end

      def initialize(*modifiers, **props, &block)
        super(&block)

        @modifiers = Array(modifiers)
        @props = Hash(props)
      end

      protected

      def modifier?(name)
        applicable_modifers.find { |modifier| modifier.first == name }
      end

      def full_props
        props.dup
          .then { |hash| apply_component_class(hash) }
          .then { |hash| apply_modifiers(hash) }
          .then { |hash| apply_default_props(hash) }
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

      def apply_default_props(hash)
        return hash unless component_default_props

        hash.merge!(component_default_props)
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

      def component_default_props
        self.class.default_props
      end
    end
  end
end
