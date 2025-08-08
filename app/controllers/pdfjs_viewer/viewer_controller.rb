# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

# PdfjsViewer Viewer Controller
class PdfjsViewer::ViewerController < ActionController::Base
  def show
    @file_url = params[:file]
    render layout: false
  end
end
