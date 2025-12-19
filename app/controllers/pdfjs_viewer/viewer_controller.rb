# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

# PdfjsViewer Viewer Controller
class PdfjsViewer::ViewerController < ActionController::Base
  def show
    @file_url = params[:file]
    @show_buttons = parse_show_buttons(params[:show_buttons])
    render layout: false
  end

  private

  def parse_show_buttons(show_buttons_param)
    return [] if show_buttons_param.blank?

    show_buttons_param.is_a?(String) ? show_buttons_param.split(',').map(&:strip) : show_buttons_param
  end
end
