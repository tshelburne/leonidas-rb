describe Leonidas::Server::CommandHandlers::CloseApp do
	include_context 'command_handler'

	describe '#handleable?' do 

		it "will respond to 'close'" do
			command.should be_handleable({ 'command' => 'close' })
		end

	end

	describe '#handle' do 
	
		it "will return a success message if the given app does not yet exist" do
			command.handle({ 'command' => 'close', 'data' => { 'name' => 'badname' } }, @thread[:connection])
			get_response['success'].should be_true
		end

		context 'when the app has been watched' do
			
			before { create_app }

			it "will remove the app from the repository" do
				command.handle({ 'command' => 'close', 'data' => { 'name' => 'test app' } }, @thread[:connection])
				repository.find('test app').should be_nil
			end

			it "will send a success message" do
				command.handle({ 'command' => 'close', 'data' => { 'name' => 'test app' } }, @thread[:connection])
				get_response['success'].should be_true
			end

		end
	
	end

end