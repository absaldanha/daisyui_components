# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "daisyui/components/version"

Gem::Specification.new do |spec|
  spec.name = "daisyui_components"
  spec.version = DaisyUI::Components::Version::STRING
  spec.authors = ["Alexandre Saldanha"]
  spec.email = ["absaldanha@protonmail.com"]
  spec.summary = "DaisyUI Components"
  spec.license = "MIT"

  spec.required_ruby_version = ["> 3.0", "< 3.3"]

  spec.metadata = {
    "source_code_uri" => "https://github.com/absaldanha/daisyui_components"
  }

  spec.files = Dir["lib/**/*"]

  spec.require_path = "lib"

  spec.add_dependency "zeitwerk", "~> 2.6"
  spec.add_dependency "phlex", "~> 1.8"

  spec.add_development_dependency "minitest", "~> 5.17"
  spec.add_development_dependency "minitest-focus", "~> 1.3"
  spec.add_development_dependency "minitest-reporters", "~> 1.5"
  spec.add_development_dependency "standard", "~> 1.28"
  spec.add_development_dependency "simplecov", "0.22.0"
  spec.add_development_dependency "phlex-testing-capybara", "0.1.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
