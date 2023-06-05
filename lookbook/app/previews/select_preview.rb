# frozen_string_literal: true

# @logical_path data_input
class SelectPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Select.new(class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Pick your favorite Simpson" }
      %w[Homer Marge Bart Lisa Maggie].each do |simpson|
        select.option { simpson }
      end
    end
  end

  def bordered
    render DaisyUI::Components::Select.new(:bordered, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Who shot first?" }
      select.option { "Han Solo" }
      select.option { "Greedo" }
    end
  end

  def ghost
    render DaisyUI::Components::Select.new(:ghost, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Pick the best JS framework" }
      select.option { "Stimulus" }
      select.option { "Svelte" }
      select.option { "Vue" }
      select.option { "React" }
    end
  end

  def with_form_control_and_labels
    render DaisyUI::Components::FormControl.new(class: "w-full max-w-xs") do |form_control|
      form_control.select(:bordered) do |select|
        select.label do |label|
          label.text { "Pick the best fantasy franchise" }
          label.alt_text { "Alt label" }
        end

        select.prompt(disabled: true, selected: true) { "Pick one" }

        ["Star Wars", "Harry Potter", "Lord of the Rings", "Planet of the Apes", "Star Trek"].each do |franchise|
          select.option { franchise }
        end

        select.helper do |helper|
          helper.alt_text { "Alt label" }
          helper.alt_text { "Alt label" }
        end
      end
    end
  end

  # @!group Colors
  def primary
    render DaisyUI::Components::Select.new(:primary, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Pick your favorite language" }
      select.option { "Ruby" }
      select.option { "Elixir" }
      select.option { "Python" }
      select.option { "Java" }
    end
  end

  def secondary
    render DaisyUI::Components::Select.new(:secondary, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Dark mode or light mode?" }
      select.option { "Auto" }
      select.option { "Dark mode" }
      select.option { "Light mode" }
    end
  end

  def info
    render DaisyUI::Components::Select.new(:info, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Select language" }
      select.option { "Portuguese" }
      select.option { "English" }
      select.option { "Japanese" }
    end
  end

  def success
    render DaisyUI::Components::Select.new(:success, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Pick your favorite anime" }
      select.option { "Clannad" }
      select.option { "Toradora!" }
      select.option { "Death Note" }
      select.option { "Fruits Basket" }
    end
  end

  def warning
    render DaisyUI::Components::Select.new(:warning, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Pick a pizza" }
      select.option { "Cheese" }
      select.option { "Pepperoni" }
      select.option { "Margherita" }
      select.option { "Veggie" }
    end
  end

  def error
    render DaisyUI::Components::Select.new(:error, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "What is the best headless CMS" }
      select.option { "Strapi" }
      select.option { "Ghost" }
      select.option { "Netlify CMS" }
      select.option { "Sanity" }
    end
  end
  # @!endgroup

  # @!group Sizes
  def large
    render DaisyUI::Components::Select.new(:lg, :bordered, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Large" }
      select.option { "Large Apple" }
      select.option { "Large Orange" }
      select.option { "Large Tomato" }
    end
  end

  def medium
    render DaisyUI::Components::Select.new(:md, :bordered, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Medium" }
      select.option { "Medium Apple" }
      select.option { "Medium Orange" }
      select.option { "Medium Tomato" }
    end
  end

  def small
    render DaisyUI::Components::Select.new(:sm, :bordered, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Small" }
      select.option { "Small Apple" }
      select.option { "Small Orange" }
      select.option { "Small Tomato" }
    end
  end

  def extra_small
    render DaisyUI::Components::Select.new(:xs, :bordered, class: "w-full max-w-xs") do |select|
      select.prompt(disabled: true, selected: true) { "Tiny" }
      select.option { "Tiny Apple" }
      select.option { "Tiny Orange" }
      select.option { "Tiny Tomato" }
    end
  end
  # @!endgroup

  def disabled
    render DaisyUI::Components::Select.new(class: "w-full max-w-xs", disabled: true) do |select|
      select.option { "You can't touch this" }
    end
  end
end
