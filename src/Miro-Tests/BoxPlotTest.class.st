"
A BoxPlotTest is a test class for testing the behavior of BoxPlot
"
Class {
	#name : #BoxPlotTest,
	#superclass : #TestCase,
	#category : #'Miro-Tests-Core'
}

{ #category : #test }
BoxPlotTest >> testAcceptedDataFrame [
	| a |
	
	a := MiroPlot allSubclasses
		select:
			[ :each | each acceptedDataFrame anySatisfy: [ :in | 'N+4P' match: in ] ].
	self assert: (a includes: BoxPlot) equals: true.

	a := MiroPlot allSubclasses
		select:
			[ :each | each acceptedDataFrame anySatisfy: [ :in | 'N+5P' match: in ] ].
	self assert: (a includes: BoxPlot) equals: false
]
