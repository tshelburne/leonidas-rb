require 'leonidas/server/command_handlers/base'

module Leonidas
	class Server
		module CommandHandlers
			class CloseApp 
				include Runnable
				
				runs_as 'close'

				def run
					repository.close(data['name'])
					repository.has? data['name'] ? succeed! : fail!
				end

			end
		end
	end
end