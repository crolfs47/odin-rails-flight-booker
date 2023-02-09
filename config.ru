# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

require 'active_support/core_ext/numeric/time.rb'