require 'json'
require 'socket'

describe Leonidas::Server::CommandHandlers::FindApp do
	include Leonidas::Server::AppRepository

	let (:command) { subject }

	before do
		@server = TCPServer.open(14131)
		@thread = Thread.new { Thread.current[:connection] = @server.accept }
		@socket = TCPSocket.new('localhost', 14131)
		@thread.join
	end

	after do
		@server.close
	end

	def get_response
		@response ||= JSON.parse(@socket.gets.chomp)
	end

	def clear_response
		@response = nil
	end

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
				@app = Leonidas::Server::App.new('test app', 'App::Class')
				repository.watch @app
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