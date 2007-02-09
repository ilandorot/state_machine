# Specifies gem version of Rails to use when vendor/rails is not present
#RAILS_GEM_VERSION = '1.2.0'

require File.join(File.dirname(__FILE__), 'boot')

require 'appable_plugins'
require 'plugin_migrations'

Rails::Initializer.run do |config|
  config.log_level = :debug
  config.cache_classes = false
  config.whiny_nils = true
  config.breakpoint_server = true
  config.load_paths << "#{File.dirname(__FILE__)}/../../../lib/"
end

Dependencies.log_activity = true