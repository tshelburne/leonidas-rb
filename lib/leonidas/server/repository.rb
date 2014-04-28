require 'leonidas/server/registry'

module Leonidas
	class Server
		module AppRepository
			def repository
				@repository ||= Repository.new
			end
		end
		
		class Repository

			def find(app_name, app_type=nil)
				Leonidas::Server::Registry.retrieve_app app_name
			end

			def has?(app_name)
				Leonidas::Server::Registry.has_app? app_name
			end

			def watch!(app)
				Leonidas::Server::Registry.register_app! app
			end

			def close!(app_or_name)
				name = app_or_name.instance_of?(Leonidas::Server::App) ? app_or_name.name : app_or_name
				Leonidas::Server::Registry.close_app! name
			end

			def clear!
				Leonidas::Server::Registry.clear_registry!
			end

		end

	end
end