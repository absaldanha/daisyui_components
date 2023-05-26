# frozen_string_literal: true

if ENV["COVERAGE"]
  require "simplecov"
end

require "bundler/setup"
require "daisyui_components"
require "minitest/autorun"
require "minitest/focus"
require "minitest/reporters"
require "phlex/testing/capybara"

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

module DaisyUI
  module Components
    class TestCase < Minitest::Test
      include Phlex::Testing::Capybara::ViewHelper
    end
  end
end
