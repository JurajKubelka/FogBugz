accessing
query
	^ query ifNil: [ query := 'status:open OR lastEdited:"this week"' ]