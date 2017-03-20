initialization
initialize
	super initialize.
	mutex := Mutex new.
	collection := OrderedCollection new.
	process := FogBugzQueueProcess new queue: self; yourself.