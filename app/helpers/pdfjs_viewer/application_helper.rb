module PdfjsViewer
  module ApplicationHelper
    def toggle_action(key = nil)
      unless PdfjsViewer.configuration.send("show_#{key}")
        'display: none'
      end
    end
  end
end