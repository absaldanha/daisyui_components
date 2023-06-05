# frozen_string_literal: true

module DaisyUI
  module Components
    class Select::OptionTest < TestCase
      def renders_option_correclty
        render Select::Option.new(label: "Foo", value: 1)

        assert_selector "option[label='Foo'][value='1']"
      end
    end
  end
end
