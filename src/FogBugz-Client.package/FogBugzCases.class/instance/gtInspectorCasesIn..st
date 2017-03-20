gt-inspector-extension
gtInspectorCasesIn: composite
	<gtInspectorPresentationOrder: 0>
	^ collection 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Cases';
				updateOn: FogBugzCasesUpdatedAnnouncement from: [ self announcer ];
				yourself ]
		ifNil: [ composite ]