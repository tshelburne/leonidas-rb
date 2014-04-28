require 'json'
require 'socket'

shared_context "command_handler" do
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

	def create_app
		@app = Leonidas::Server::App.new('test app', 'App::Class')
		repository.watch @app
	end
end
	