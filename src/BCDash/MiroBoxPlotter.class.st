Class {
	#name : #MiroBoxPlotter,
	#superclass : #Object,
	#instVars : [
		'list'
	],
	#category : #'BCDash-Plotter'
}

{ #category : #api }
MiroBoxPlotter >> firstQuartile [
	
	| l |
	l := list data size.
	self flag: #todo.
	"here we can see that the list does not expose a nice api. It should 
	be list dataAt: to encapsulate the ordering."
	
	^ list data at: (l / 4) floor

]

{ #category : #accessing }
MiroBoxPlotter >> interquartileRange [
	^self lastQuartile - self firstQuartile .
]

{ #category : #api }
MiroBoxPlotter >> lastQuartile [
	
	^ list data at: (list data size / 4 * 3) floor
]

{ #category : #accessing }
MiroBoxPlotter >> lowerBoundaryOutliers [
	^self firstQuartile - (1.5 * self interquartileRange).
]

{ #category : #api }
MiroBoxPlotter >> maximum [
	^ list maxValue
]

{ #category : #api }
MiroBoxPlotter >> median [
	^ list data median
]

{ #category : #api }
MiroBoxPlotter >> minimum [
	^ list minValue
]

{ #category : #initialization }
MiroBoxPlotter >> on: aBCListOfSingleValues [ 
	list := aBCListOfSingleValues
]

{ #category : #accesing }
MiroBoxPlotter >> upperBoundaryOutliers [
	^self lastQuartile + (1.5 * self interquartileRange).
]
