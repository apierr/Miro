Class {
	#name : #MiroBoxploterTest,
	#superclass : #TestCase,
	#category : #'MiroTest-Plotter'
}

{ #category : #tests }
MiroBoxploterTest >> testBoxplotIsWorking [

	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp median equals: #(0 0 0 50 100 100 100) median.
	self assert: bp minimum equals: 0.
	self assert: bp maximum equals: 100. 
	
]

{ #category : #tests }
MiroBoxploterTest >> testFirstQuartile [

	| list bp |
	list := MiroListOfSingleValues new data: #(1 4 4 4 5 5 5 9).
	bp := MiroBoxPlotter new on: list.
	self assert: bp firstQuartile equals: 4.

]

{ #category : #tests }
MiroBoxploterTest >> testInterquartileRange [
	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: (bp lastQuartile - bp firstQuartile) equals: 100
	

]

{ #category : #tests }
MiroBoxploterTest >> testLastQuartile [

	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp lastQuartile equals: 100.

]

{ #category : #tests }
MiroBoxploterTest >> testLowerBoundaryOutliers [
	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp lowerBoundaryOutliers equals: -150
	

]

{ #category : #tests }
MiroBoxploterTest >> testUpperBoundaryOutliers [
	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp upperBoundaryOutliers equals: 250
	

]
