# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

PdfjsViewer::Engine.routes.draw do
  root to: 'viewer#show'

  get '/', to: 'viewer#show'
  get '/build/*path', to: 'assets#show'
  get '/web/*path', to: 'assets#show'
end
