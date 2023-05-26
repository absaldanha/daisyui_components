# frozen_string_literal: true

require "zeitwerk"
require "phlex"

module DaisyUI
  module Components
    def self.loader
      @loader ||= Zeitwerk::Loader.new.tap do |loader|
        root = File.expand_path("..", __dir__)
        loader.tag = "daisyui_components"
        loader.inflector = Zeitwerk::GemInflector.new("#{root}/daisyui_components.rb")
        loader.push_dir(root)
        loader.ignore("#{root}/daisyui_components.rb")
        loader.inflector.inflect("daisyui" => "DaisyUI")
      end
    end

    loader.setup
  end
end
