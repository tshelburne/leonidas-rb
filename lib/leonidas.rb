require 'leonidas/patches/time'
require 'leonidas/app'
require "leonidas/app/client"
%w(aggregator command filterer handler processor).each {|file| require "leonidas/commands/#{file}"}

module Leonidas
	
end