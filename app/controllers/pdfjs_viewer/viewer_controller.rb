module PdfjsViewer
  class ViewerController < ActionController::Base
    def show
      @file_url = params[:file]
      render layout: false
    end
  end
end