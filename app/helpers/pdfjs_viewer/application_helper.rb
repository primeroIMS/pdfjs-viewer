# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

# PdfjsViewer Application Helper
module PdfjsViewer::ApplicationHelper
  def toggle_action(key = nil)
    return if PdfjsViewer.configuration.send(key)

    'display: none'
  end

  def stylesheet_path
    PdfjsViewer.configuration.stylesheet_path
  end

  def pdfjs_viewer_path
    PdfjsViewer::Engine.routes.url_helpers.root_path
  end
end
