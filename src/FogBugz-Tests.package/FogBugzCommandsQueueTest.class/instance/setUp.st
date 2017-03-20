running
setUp
	super setUp.
	activations := 0.
	queue := FogBugzCommandsQueue new.
	queue process: self.