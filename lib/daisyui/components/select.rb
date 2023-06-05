# frozen_string_literal: true

module DaisyUI
  module Components
    class Select < Base
      include Phlex::DeferredRender
      prepend LabelledControl

      self.component_class = "select"

      modifier :bordered, "select-bordered"
      modifier :ghost, "select-ghost"
      modifier :primary, "select-primary"
      modifier :secondary, "select-secondary"
      modifier :accent, "select-accent"
      modifier :info, "select-info"
      modifier :success, "select-success"
      modifier :warning, "select-warning"
      modifier :error, "select-error"
      modifier :lg, "select-lg"
      modifier :md, "select-md"
      modifier :sm, "select-sm"
      modifier :xs, "select-xs"

      def initialize(...)
        @options = []
        super(...)
      end

      def template
        select(**full_props) do
          @options.each do |option|
            render option
          end
        end
      end

      def option(...)
        @options << Option.new(...)
      end

      def prompt(...)
        @options.prepend(Option.new(...))
      end

      private

      attr_reader :options
    end
  end
end
