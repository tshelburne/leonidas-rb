describe Leonidas::Server::CommandHandlers::WatchApp do
	include_context 'command_handler'

	describe '#handleable?' do 

		it "will respond to 'watch'" do
			command.should be_handleable({ 'command' => 'watch' })
		end

	end

	describe '#handle' do 

		after { repository.close 'test app' }
	
		it "will return a failure message if the given app already exists" do
			create_app
			command.handle({ 'command' => 'watch', 'data' => { 'name' => 'test app', 'type' => 'App::Class' } }, @thread[:connection])
			get_response['success'].should be_false
		end

		context 'when the app has been watched' do

			it "will add the app to the repository" do
				command.handle({ 'command' => 'watch', 'data' => { 'name' => 'test app', 'type' => 'App::Class' } }, @thread[:connection])
				(app = repository.find('test app')).should_not be_nil
				app.name.should eq 'test app'
				app.type.should eq 'App::Class'
			end

			it "will send a success message" do
				command.handle({ 'command' => 'watch', 'data' => { 'name' => 'test app', 'type' => 'App::Class' } }, @thread[:connection])
				get_response['success'].should be_true
			end

		end
	
	end

end