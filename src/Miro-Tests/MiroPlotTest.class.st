Class {
	#name : #MiroPlotTest,
	#superclass : #TestCase,
	#category : #'Miro-Tests-Core'
}

{ #category : #testing }
MiroPlotTest class >> isAbstract [
	^ self = MiroPlot
]

{ #category : #testing }
MiroPlotTest class >> shouldInheritSelectors [
	^ true
]

{ #category : #accessing }
MiroPlotTest >> actualClass [
	^ self subclassResponsibility
]

{ #category : #accessing }
MiroPlotTest >> matchingDataFrame [
	^ self subclassResponsibility
]

{ #category : #accessing }
MiroPlotTest >> notMatchingDataFrame [
	^ self subclassResponsibility
]

{ #category : #accessing }
MiroPlotTest >> testAcceptedDataFrame [
	| a |
	a := MiroPlot plotsFor: self matchingDataFrame.
	self assert: (a includes: self actualClass).
	a := MiroPlot plotsFor: self notMatchingDataFrame.
	self deny: (a includes: self actualClass)
]
