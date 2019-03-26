Class {
	#name : #MiroPointTest,
	#superclass : #TestCase,
	#category : #'MiroTest-Data'
}

{ #category : #tests }
MiroPointTest >> testDimension [
	"comment stating purpose of message"
	|mp|
	mp := MiroPoint new.
	self assert: mp dimension equals: 0
]

{ #category : #test }
MiroPointTest >> testValues [

	self flag: #toImplement.
	self assert: false
]
