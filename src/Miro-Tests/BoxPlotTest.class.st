"
A BoxPlotTest is a test class for testing the behavior of BoxPlot
"
Class {
	#name : #BoxPlotTest,
	#superclass : #MiroPlotTest,
	#category : #'Miro-Tests-Core'
}

{ #category : #accessing }
BoxPlotTest >> actualClass [
	^ BoxPlot
]

{ #category : #accessing }
BoxPlotTest >> matchingDataFrame [
	^ 'N+4P'
]

{ #category : #accessing }
BoxPlotTest >> notMatchingDataFrame [
	^ 'N+5P'
]
