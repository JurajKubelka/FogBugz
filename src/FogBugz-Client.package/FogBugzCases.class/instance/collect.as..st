enumerating
collect: aBlock as: aClass
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into an instance of aClass. Answer the resulting collection."
	^ mutex critical: [ collection collect: aBlock as: aClass ]