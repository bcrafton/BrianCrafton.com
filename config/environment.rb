# Load the Rails application.

require File.expand_path('../application', __FILE__)
Paperclip.options[:command_path] = 'C:/Progra~1/ImageM~1.8-q'
Paperclip.options[:image_magick_path] = ""
# Initialize the Rails application.

Rails.application.initialize!
