# frozen_string_literal: true

module DaisyUI
  module Components
    class Tabs < Base
      include Phlex::DeferredRender

      self.component_class = "tabs"

      modifier :boxed, "tabs-boxed"

      def initialize(...)
        @tabs = []
        super(...)
      end

      def template
        div(**full_props) do
          tabs.each do |tab|
            render tab
          end
        end
      end

      def tab(...)
        @tabs << Tab.new(...)
      end

      private

      attr_reader :tabs
    end
  end
end
