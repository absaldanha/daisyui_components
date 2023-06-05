# frozen_string_literal: true

# @logical_path navigation
class TabsPreview < Lookbook::Preview
  def default
    render DaisyUI::Components::Tabs.new do |tabs|
      tabs.tab { "Tab 1" }
      tabs.tab(:active) { "Tab 2" }
      tabs.tab { "Tab 3" }
    end
  end

  def boxed
    render DaisyUI::Components::Tabs.new(:boxed) do |tabs|
      tabs.tab { "Tab 1" }
      tabs.tab(:active) { "Tab 2" }
      tabs.tab { "Tab 3" }
    end
  end

  def lifted
    render DaisyUI::Components::Tabs.new(:lifted) do |tabs|
      tabs.tab { "Tab 1" }
      tabs.tab(:lifted, :active) { "Tab 2" }
      tabs.tab { "Tab 3" }
    end
  end

  # @!group Sizes

  def extra_small
    render DaisyUI::Components::Tabs.new(:xs) do |tabs|
      tabs.tab(:xs) { "Tab 1" }
      tabs.tab(:xs, :active) { "Tab 2" }
      tabs.tab(:xs) { "Tab 3" }
    end
  end

  def small
    render DaisyUI::Components::Tabs.new(:sm) do |tabs|
      tabs.tab(:sm) { "Tab 1" }
      tabs.tab(:sm, :active) { "Tab 2" }
      tabs.tab(:sm) { "Tab 3" }
    end
  end

  def medium
    render DaisyUI::Components::Tabs.new(:md) do |tabs|
      tabs.tab(:md) { "Tab 1" }
      tabs.tab(:md, :active) { "Tab 2" }
      tabs.tab(:md) { "Tab 3" }
    end
  end

  def large
    render DaisyUI::Components::Tabs.new(:lg) do |tabs|
      tabs.tab(:lg) { "Tab 1" }
      tabs.tab(:lg, :active) { "Tab 2" }
      tabs.tab(:lg) { "Tab 3" }
    end
  end

  # @!endgroup
end
