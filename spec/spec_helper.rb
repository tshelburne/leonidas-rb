require 'leonidas'
%w(app commands persistence).each {|file| require_relative "support/classes/#{file}"}
%w(sync_requests).each {|file| require_relative "support/mocks/#{file}"}
require_relative 'support/objects'