Class {
	#name : #BCBoxploter,
	#superclass : #Object,
	#instVars : [
		'list'
	],
	#category : #'BCDash-Plotter'
}

{ #category : #api }
BCBoxploter >> firstQuartile [
	
	| l |
	l := list data size.
	self flag: #todo.
	"here we can see that the list does not expose a nice api. It should 
	be list dataAt: to encapsulate the ordering."
	
	^ list data at: (l / 4) floor

]

{ #category : #api }
BCBoxploter >> lastQuartile [
	
	^ list data at: (list data size / 4 * 3) floor
]

{ #category : #api }
BCBoxploter >> maximum [
	^ list maxValue
]

{ #category : #api }
BCBoxploter >> median [
	^ list data median
]

{ #category : #api }
BCBoxploter >> minimum [
	^ list minValue
]

{ #category : #initialization }
BCBoxploter >> on: aBCListOfSingleValues [ 
	list := aBCListOfSingleValues
]
