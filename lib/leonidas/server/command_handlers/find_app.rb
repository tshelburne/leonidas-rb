require 'leonidas/server/command_handlers/runnable'

module Leonidas
	class Server
		module CommandHandlers
			class FindApp 
				include Runnable
				
				runs_as 'find'

				def run
					fail! if (app = repository.find(data['name'])).nil?
					socket.puts app.to_json 
				end

			end
		end
	end
end