Class {
	#name : #MiroPoint,
	#superclass : #Object,
	#instVars : [
		'values'
	],
	#category : #'Miro-Data'
}

{ #category : #accessing }
MiroPoint >> values [
	^ values
]

{ #category : #accessing }
MiroPoint >> values: anObject [
	values := anObject
]
