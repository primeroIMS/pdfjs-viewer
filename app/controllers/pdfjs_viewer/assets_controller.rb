module PdfjsViewer
  class AssetsController < ApplicationController
    def show
      file_path = params[:path]
      full_path = File.join(PdfjsViewer::Engine.root, 'public', file_path)
      
      if File.exist?(full_path)
        content_type = case File.extname(file_path)
                      when '.js' then 'application/javascript'
                      when '.mjs' then 'application/javascript'
                      when '.css' then 'text/css'
                      when '.wasm' then 'application/wasm'
                      when '.map' then 'application/json'
                      else 'application/octet-stream'
                      end
        
        send_file full_path, type: content_type, disposition: 'inline'
      else
        head :not_found
      end
    end
  end
end