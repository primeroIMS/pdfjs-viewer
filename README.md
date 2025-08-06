# PdfjsViewer

A Rails engine that provides PDF.js viewer functionality as a mountable engine. This gem allows you to easily integrate the PDF viewer from https://mozilla.github.io/pdf.js/ into your Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdfjs_viewer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pdfjs_viewer

## Usage

### 1. Generate Configuration File

Run the install generator to create a configuration file:

```bash
rails generate pdfjs_viewer:install
```

This will create `config/initializers/pdfjs_viewer.rb` with all available configuration options.

### 2. Mount the Engine

Add this to your application's `config/routes.rb`:

```ruby
mount PdfjsViewer::Engine => "/pdf"
```

### 3. Configure the Viewer (Optional)

Edit `config/initializers/pdfjs_viewer.rb` to customize which toolbar buttons are shown:

```ruby
PdfjsViewer.configure do |config|
  config.show_highlight_button = true      # Show/hide highlight tool
  config.show_text_button = true           # Show/hide text annotation tool
  config.show_draw_button = true           # Show/hide drawing tool
  config.show_add_edit_image_button = true # Show/hide image editing tool
  config.show_print_button = true          # Show/hide print button
  config.show_save_button = true           # Show/hide save/download button
  config.show_open_file_button = true      # Show/hide open file button
end
```

### 4. Use the Viewer

#### Display a PDF from a URL

Navigate to the viewer with a file parameter:

```
http://localhost:3000/pdfjs/viewer?file=https://example.com/sample.pdf
```

#### Embed in Your Views

You can embed the viewer in your Rails views:

```erb
<iframe 
  src="<%= pdfjs_viewer_path %>?file=<%= CGI.escape(@pdf_url) %>" 
  frameborder="0" />
```
or you can use the object tag

```erb
<object 
  src="<%= pdfjs_viewer_path %>?file=<%= CGI.escape(@pdf_url) %>" 
  width="100%" 
  height="600px" >
  <div>A fallback link/message if viewer does not load</div>
</object>
```

### 5. Styling and Customization

The viewer loads with default PDF.js styling. To customize the appearance, you can:

1. Override CSS in your application's stylesheets
2. Modify the viewer template if needed
3. Use the configuration options to show/hide specific toolbar elements

## Requirements

- Rails 5.0 or higher
- Modern web browser with JavaScript enabled

## Updating pdfjs from Mozilla

### Requirements

 - [node/npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

### Instructions

1. Run update script

    ```
        bin/build_pdfjs $PDF_JS_VERSION
    ```

2. Script will replace the files in `public/web` and `public/build`.  Any updates to viewer.html will need to be made manually in `app/views/pdfjs_viewer/viewer/show.html.erb`. You can use the html file located at `public/web/viewer.html` as a reference.

3. Afterwards commit and push changes.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/primeroIMS/pdfjs-viewer.

## License

This gem is available as open source under the terms of the [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0).
