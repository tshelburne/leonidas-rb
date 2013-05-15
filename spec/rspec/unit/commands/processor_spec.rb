describe Leonidas::Commands::Processor do
	include TestObjects

	subject do
		@app = TestMocks::MockApp.new
		described_class.new([ TestClasses::IncrementHandler.new(@app), TestClasses::MultiplyHandler.new(@app) ])
	end

	before :each do
		TestClasses::PersistentState.reset
		@command1 = build_command(Time.at(1))
		@command2 = build_command(Time.at(2), "clientid", "multiply", { number: 3 })
		@command3 = build_command(Time.at(3), "clientid", "increment", { number: 4 })
	end

	describe '#run' do 

		it "will run a list of commands in order by timestamp" do
			subject.run([ @command3, @command1, @command2 ])
			@app.current_state[:value].should eq 7
		end

		it "will persist the list of commands when persist is true" do 
			subject.run([ @command3, @command1, @command2 ], true)
			TestClasses::PersistentState.value.should eq 7
		end

	end

	describe '#rollback' do
		
		it "will rollback the list of commands in reverse order by timestamp" do
			subject.run([ @command3, @command1, @command2 ])
			subject.rollback([ @command3, @command2 ])
			expect @app.current_state[:value].should eq 1
		end

	end

end