accessing
target: anObject
	| categories |
	target := anObject.
	target ifNil: [ ^ self currentCategory: nil ].
	categories := target blockCategories.
	self
		currentCategory:
			((categories includes: currentCategory)
				ifTrue: [ currentCategory ]
				ifFalse: [ categories first ])