require 'json'

module Leonidas
	class Server
		class App

			attr_reader :name, :type

			def initialize(name, type)
				@name = name
				@type = type
			end

			def to_json
				{ name: name, type: type }.to_json
			end

		end
	end
end