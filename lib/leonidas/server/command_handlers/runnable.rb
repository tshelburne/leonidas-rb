require 'json'
require 'leonidas/server/repository'

module Leonidas
	class Server
		module CommandHandlers
			module Runnable
				include Leonidas::Server::AppRepository

				module ClassMethods

					attr_reader :command_name

					def runs_as(name)
						@command_name = name
					end

				end

				module InstanceMethods

					attr_reader :data, :socket

					def handleable?(data)
						data['command'] == self.class.command_name
					end

					def handle(data, socket)
						@data, @socket = data['data'], socket
						run
						@data, @socket = nil, nil
					end

					def succeed!
						@socket.puts({ success: true }.to_json)
					end

					def fail!
						@socket.puts({ success: false }.to_json)
					end

				end

				def self.included(receiver)
					receiver.extend         ClassMethods
					receiver.send :include, InstanceMethods
				end

			end
		end
	end
end