# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# to avoid error while running rails console
require 'carrierwave/orm/activerecord'