public
query: queryString
	"Execute a custom query"
	queue addCommand: (FogBugzQueryCommand new
		announcer: self announcer;
		tracker: tracker;
		cases: cases;
		query: queryString;
		yourself)