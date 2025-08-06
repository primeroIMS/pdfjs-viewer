module PdfjsViewer
  class Engine < ::Rails::Engine
    isolate_namespace PdfjsViewer

    initializer "pdfjs_viewer.mime_types" do |app|
      Mime::Type.register "application/javascript", :mjs
      Rack::Mime::MIME_TYPES[".mjs"] = "application/javascript"
      Rack::Mime::MIME_TYPES[".wasm"] = "application/wasm"
    end

    # Serve static files from engine's public directory
    initializer "pdfjs_viewer.static_files" do |app|
      app.middleware.use ::ActionDispatch::Static, root.join('public').to_s
    end
  end
end