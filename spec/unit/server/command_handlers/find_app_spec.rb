describe Leonidas::Server::CommandHandlers::FindApp do
	include_context 'command_handler'

	describe '#handleable?' do 

		it "will respond to 'find'" do
			command.should be_handleable({ 'command' => 'find' })
		end

	end

	describe '#handle' do 
	
		it "will return a failed message if the given app does not yet exist" do
			command.handle({ 'command' => 'find', 'data' => { 'name' => 'badname' } }, @thread[:connection])
			get_response['success'].should be_false
		end

		context 'when the app has been watched' do
			
			before do
				create_app
			end

			after do
				repository.close @app
			end

			it "will return the app name" do
				command.handle({ 'command' => 'find', 'data' => { 'name' => 'test app' } }, @thread[:connection])
				get_response['name'].should eq 'test app'
			end

			it "will return the app type" do
				command.handle({ 'command' => 'find', 'data' => { 'name' => 'test app' } }, @thread[:connection])
				get_response['type'].should eq 'App::Class'
			end

		end
	
	end

end