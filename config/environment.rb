require "bundler/setup"

require "sinatra/activerecord"

Bundler.require

# configure :development do
#   set :database, 'sqlite3:db/database.db'
#  end

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
