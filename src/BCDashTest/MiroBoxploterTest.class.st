Class {
	#name : #MiroBoxploterTest,
	#superclass : #TestCase,
	#category : #'BCDashTest-Plotter'
}

{ #category : #tests }
MiroBoxploterTest >> testBoxplotFirstQuartile [

	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp firstQuartile equals: 0.

]

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
MiroBoxploterTest >> testBoxplotLastQuartile [

	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: bp lastQuartile equals: 100.

]

{ #category : #tests }
MiroBoxploterTest >> testInterquartileRange [
	| list bp |
	list := MiroListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := MiroBoxPlotter new on: list.
	self assert: (bp lastQuartile - bp firstQuartile) equals: 100
	

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
