require 'rubygems'
require 'bundler/setup'

require "pry"
require "active_record"
require "active_support"
require "active_support/inflector"
require "sqlite3"
require "sinatra"
require "sinatra/reloader"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'photography.db')

# So that ActiveRecord explains the SQL it's running in the logs.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

# Models
require_relative "models/photographer.rb"
require_relative "models/photo.rb"
require_relative "models/album.rb"

# Controllers
require_relative "controllers/photographers.rb"
require_relative "controllers/photos.rb"
require_relative "controllers/albums.rb"

# Database
require_relative 'database_setup.rb'