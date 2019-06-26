"
A BeanPlotTest is a test class for testing the behavior of BeanPlot
"
Class {
	#name : #BeanPlotTest,
	#superclass : #TestCase,
	#category : #'Miro-Tests-Core'
}

{ #category : #test }
BeanPlotTest >> testAcceptedDataFrame [
	| a |
	
	a := MiroPlot allSubclasses
		select:
			[ :each | each acceptedDataFrame anySatisfy: [ :in | 'N+4P' match: in ] ].
	self assert: (a includes: BeanPlot) equals: true.

	a := MiroPlot allSubclasses
		select:
			[ :each | each acceptedDataFrame anySatisfy: [ :in | 'N+3P' match: in ] ].
	self assert: (a includes: BeanPlot) equals: false
]
