class CommandList

	constructor: ->
		@commands = [ ]

	addCommand: (command)-> 
		@commands.push command
		sortCommands @commands
		
	addCommands: (commands)-> @addCommand(command) for command in commands

	commandsThrough: (timestamp)-> (command for command in @commands when command.timestamp <= timestamp)

	commandsSince: (timestamp)-> (command for command in @commands when command.timestamp > timestamp)

	# private

	sortCommands = (commands)-> commands.sort (a,b)-> if a.timestamp > b.timestamp then 1 else -1

return CommandList