# frozen_string_literal: true

module DaisyUI
  module Components
    class AvatarGroup < Base
      include Phlex::DeferredRender

      self.component_class = "avatar-group"

      def initialize(...)
        @avatars = []
        super(...)
      end

      def template
        div(**full_props) do
          avatars.each do |avatar|
            render avatar
          end
        end
      end

      def avatar(...)
        @avatars << Avatar.new(...)
      end

      private

      attr_reader :avatars
    end
  end
end
