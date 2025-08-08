# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

# PdfjsViewer Assets Controller
class PdfjsViewer::AssetsController < ApplicationController
  def show
    file_path = params[:path]
    full_path = File.join(PdfjsViewer::Engine.root, 'public', file_path)

    if File.exist?(full_path)
      send_file full_path, type: content_type(file_path), disposition: 'inline'
    else
      head :not_found
    end
  end

  def content_type(file_path)
    case File.extname(file_path)
    when '.js', '.mjs' then 'application/javascript'
    when '.css' then 'text/css'
    when '.wasm' then 'application/wasm'
    when '.map' then 'application/json'
    else 'application/octet-stream'
    end
  end
end
