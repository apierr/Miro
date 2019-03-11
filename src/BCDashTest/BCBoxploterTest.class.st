Class {
	#name : #BCBoxploterTest,
	#superclass : #TestCase,
	#category : #'BCDashTest-Plotter'
}

{ #category : #tests }
BCBoxploterTest >> testBoxplotFirstQuartile [

	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: bp firstQuartile equals: 0.

]

{ #category : #tests }
BCBoxploterTest >> testBoxplotIsWorking [

	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: bp median equals: #(0 0 0 50 100 100 100) median.
	self assert: bp minimum equals: 0.
	self assert: bp maximum equals: 100. 
	
]

{ #category : #tests }
BCBoxploterTest >> testBoxplotLastQuartile [

	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: bp lastQuartile equals: 100.

]

{ #category : #tests }
BCBoxploterTest >> testInterquartileRange [
	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: (bp lastQuartile - bp firstQuartile) equals: 100
	

]

{ #category : #tests }
BCBoxploterTest >> testLowerBoundaryOutliers [
	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: bp lowerBoundaryOutliers equals: -150
	

]

{ #category : #tests }
BCBoxploterTest >> testUpperBoundaryOutliers [
	| list bp |
	list := BCListOfSingleValues new data: #(0 0 0 50 100 100 100).
	bp := BCBoxPlotter new on: list.
	self assert: bp upperBoundaryOutliers equals: 250
	

]
