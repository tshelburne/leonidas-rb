require 'leonidas/server/app'
require 'leonidas/server/command_handlers/runnable'

module Leonidas
	class Server
		module CommandHandlers
			class WatchApp 
				include Runnable
				
				runs_as 'watch'

				def run
					return fail! if repository.has? data['name']
							
					repository.watch! Leonidas::Server::App.new(data['name'], data['type']) 
					succeed!
				end

			end
		end
	end
end