# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

require 'pdfjs_viewer/version'
require 'pdfjs_viewer/configuration'
require 'pdfjs_viewer/engine'

# Main module for PdfjsViewer
module PdfjsViewer
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset_configuration!
    @configuration = Configuration.new
  end
end
