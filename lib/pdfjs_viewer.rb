require "pdfjs_viewer/version"
require "pdfjs_viewer/configuration"
require "pdfjs_viewer/engine"

module PdfjsViewer
  class << self
    attr_accessor :configuration
  end

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
