testing
testNextPutAll
	countingStream nextPutAll: (String with: (Character codePoint: 16rE4)).
	self assert: countingStream size = 2.
	self assert: countingStream count = 1.
	self assert: countingStream contents asString = (String with: (Character codePoint: 16rC3) with: (Character codePoint: 16rA4))