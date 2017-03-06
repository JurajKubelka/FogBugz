actions
query: queryString
	"Execute a custom query"
	self ensureLogged.
	queue addCommand: (GCFogBugzCustomQueryCommand new
		announcer: self announcer;
		tracker: tracker;
		cases: cases;
		query: queryString;
		yourself)