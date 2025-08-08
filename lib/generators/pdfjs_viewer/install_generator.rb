# frozen_string_literal: true

# Copyright (c) 2014 - 2025 Salus. All rights reserved.

require 'rails/generators'

# PdfjsViewer Install Generator
class PdfjsViewer::Generators::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  desc 'Creates a PdfjsViewer initializer in your application.'

  def copy_initializer_file
    template 'pdfjs_viewer.rb', 'config/initializers/pdfjs_viewer.rb'
  end

  def show_readme
    readme 'README' if behavior == :invoke
  end
end
