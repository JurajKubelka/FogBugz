public
query: queryString
	"Execute a custom query"
	self ensureLogged.
	queue addCommand: (FogBugzQueryCommand new
		announcer: self announcer;
		tracker: tracker;
		cases: cases;
		query: queryString;
		yourself)