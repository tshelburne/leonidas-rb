require 'leonidas'
require 'leonidas/server'

require_relative 'support/contexts/command_handler'
%w(app commands).each {|file| require_relative "support/classes/#{file}"}
require_relative 'support/objects'