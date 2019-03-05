Class {
	#name : #BCBoxPlotter,
	#superclass : #Object,
	#instVars : [
		'list'
	],
	#category : #'BCDash-Plotter'
}

{ #category : #api }
BCBoxPlotter >> firstQuartile [
	
	| l |
	l := list data size.
	self flag: #todo.
	"here we can see that the list does not expose a nice api. It should 
	be list dataAt: to encapsulate the ordering."
	
	^ list data at: (l / 4) floor

]

{ #category : #accessing }
BCBoxPlotter >> interquartileRange [
	^self lastQuartile - self firstQuartile .
]

{ #category : #api }
BCBoxPlotter >> lastQuartile [
	
	^ list data at: (list data size / 4 * 3) floor
]

{ #category : #accessing }
BCBoxPlotter >> lowerBoundaryOutliers [
	^self firstQuartile - (1.5 * self interquartileRange).
]

{ #category : #api }
BCBoxPlotter >> maximum [
	^ list maxValue
]

{ #category : #api }
BCBoxPlotter >> median [
	^ list data median
]

{ #category : #api }
BCBoxPlotter >> minimum [
	^ list minValue
]

{ #category : #initialization }
BCBoxPlotter >> on: aBCListOfSingleValues [ 
	list := aBCListOfSingleValues
]

{ #category : #accesing }
BCBoxPlotter >> upperBoundaryOutliers [
	^self lastQuartile + (1.5 * self interquartileRange).
]
