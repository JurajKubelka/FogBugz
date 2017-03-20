writing
twoDummyCommands
	"Executes two commands. Both writes to Transcript."
	"self twoDummyCommands"
	<gtExample>
   ^ FogBugzCommandsQueue new
			addCommand: (FogBugzDummyCommand new);
			addCommand: (FogBugzDummyCommand new);
			yourself
