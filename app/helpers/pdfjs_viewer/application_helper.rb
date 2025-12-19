# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

# PdfjsViewer Application Helper
module PdfjsViewer::ApplicationHelper
  BUTTON_CONFIG_MAPPING = {
    'editorHighlightButton' => :show_highlight_button,
    'editorFreeTextButton' => :show_text_button,
    'editorInkButton' => :show_draw_button,
    'editorStampButton' => :show_add_edit_image_button,
    'printButton' => :show_print_button,
    'downloadButton' => :show_save_button,
    'secondaryOpenFile' => :show_open_file_button
  }.freeze

  def toggle_action(key = nil)
    return if PdfjsViewer.configuration.send(key)

    'hide'
  end

  def stylesheet_path
    PdfjsViewer.configuration.stylesheet_path
  end

  def pdfjs_viewer_path
    PdfjsViewer::Engine.routes.url_helpers.root_path
  end

  def button_visibility(button_id)
    return default_button_visibility(button_id) if @show_buttons.blank?

    @show_buttons.include?(button_id.to_s) ? '' : 'hide'
  end

  private

  def button_config_key(button_id)
    BUTTON_CONFIG_MAPPING[button_id.to_s]
  end

  def default_button_visibility(button_id)
    config_key = button_config_key(button_id)
    config_key ? toggle_action(config_key) : ''
  end
end
