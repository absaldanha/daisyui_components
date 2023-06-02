# frozen_string_literal: true

module DaisyUI
  module Components
    class FileInput < Base
      prepend LabelledControl

      self.component_class = "file-input"

      modifier :bordered, "file-input-bordered"
      modifier :ghost, "file-input-ghost"
      modifier :primary, "file-input-primary"
      modifier :secondary, "file-input-secondary"
      modifier :accent, "file-input-accent"
      modifier :info, "file-input-info"
      modifier :success, "file-input-success"
      modifier :warning, "file-input-warning"
      modifier :error, "file-input-error"
      modifier :lg, "file-input-lg"
      modifier :md, "file-input-md"
      modifier :sm, "file-input-sm"
      modifier :xs, "file-input-xs"

      def template
        input(**full_props, type: "file")
      end
    end
  end
end
