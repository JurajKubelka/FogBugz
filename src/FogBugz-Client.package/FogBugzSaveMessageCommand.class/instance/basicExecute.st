private
basicExecute
	self isRichMessage 
		ifFalse: [ case saveMessage: self message ]
		ifTrue: [ case saveRichMessage: self message ]