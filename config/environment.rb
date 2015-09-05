# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Vertalab::Application.initialize!

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


