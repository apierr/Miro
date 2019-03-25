Class {
	#name : #MiroValueTest,
	#superclass : #TestCase,
	#category : #'MiroTest-Data'
}

{ #category : #testing }
MiroValueTest >> testIsLabel [
	"comment stating purpose of message"
	|mv|
	mv := MiroValue new.
	mv value: 'lkjkl'.
	self assert: (mv value) isLabel equals: true.
]

{ #category : #testing }
MiroValueTest >> testIsNumber [
	"comment stating purpose of message"
	|mv|
	mv := MiroValue new.
	mv value: 'label'.
	self assert: mv value isNumber equals: false.
	mv value: 12.
	self assert: mv value isNumber equals: true
]
