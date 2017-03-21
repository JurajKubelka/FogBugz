initialization
initializeProcess
	process := [ [ self hasCommands ] whileTrue: [ self executeCommand ].
		self deactivate. ]
		forkAt: Processor userBackgroundPriority
		named: 'FogBugz Process'