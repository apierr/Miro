Class {
	#name : #BCBoxploter,
	#superclass : #Object,
	#instVars : [
		'list'
	],
	#category : #BCDashTest
}

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
