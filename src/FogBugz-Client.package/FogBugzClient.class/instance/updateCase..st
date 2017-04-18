public
updateCase: aFogBugzCase 
	"Update the case from the FogBugz server."
	self query: 'ixbug:', aFogBugzCase id asString