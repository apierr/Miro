Class {
	#name : #MiroPoint,
	#superclass : #MiroData,
	#instVars : [
		'values'
	],
	#category : #'Miro-Data'
}

{ #category : #initialization }
MiroPoint >> addValue: aMiroValue [
	values  add: aMiroValue.
	^aMiroValue

]

{ #category : #accessing }
MiroPoint >> dimension [
	"Dimension of a point"
	^ values size
]

{ #category : #initialization }
MiroPoint >> initialize [
	super initialize .
	values := OrderedCollection new

]

{ #category : #accessing }
MiroPoint >> values [
	^ values
]

{ #category : #accessing }
MiroPoint >> values: aCollection [
	values := aCollection
]
