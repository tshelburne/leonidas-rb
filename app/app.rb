class SyncApp < Sinatra::Base
	include Keystone::Server::Helpers

	get '/test' do
		@command_source = Commands::CommandSource.new("1234")
		@external_sources = [
			Commands::CommandSource.new("2345"),
			Commands::CommandSource.new("3456")
		]
		haml :test
	end

	get '/sync' do
    content_type "application/json"

		{
			success: true,
			message: 'commands retrieved',
			data: {
				commands: [
					{ name: 'log', data: { message: 'received command'}, timestamp: 2 },
					{ name: 'increment', data: { }, timestamp: 1 },
					{ name: 'increment', data: { }, timestamp: 3 }
				],
				stableTimestamp: 1
			}
		}.to_json
	end

	post '/sync' do
    content_type "application/json"

    {
    	success: true,
    	message: 'commands received',
    	data: { }
    }.to_json
	end 

end