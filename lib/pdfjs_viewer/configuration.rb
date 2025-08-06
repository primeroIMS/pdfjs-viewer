module PdfjsViewer
  class Configuration
    attr_accessor :show_highlight_button, :show_text_button, :show_draw_button, :show_add_edit_image_button,
    :show_print_button, :show_save_button, :show_open_file_button

    def initialize
      @show_highlight_button = true
      @show_text_button = true
      @show_draw_button = true
      @show_add_edit_image_button = true
      @show_print_button = true
      @show_save_button = true
      @show_open_file_button = true
    end
  end
end