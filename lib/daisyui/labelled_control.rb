# frozen_string_literal: true

module DaisyUI
  module LabelledControl
    def self.prepended(base)
      base.include(Phlex::DeferredRender)
    end

    def template
      render @label if @label
      super
      render @helper if @helper
    end

    def label(...)
      @label = Components::Label.new(...)
    end

    def helper(...)
      @helper = Components::Label.new(...)
    end
  end
end
