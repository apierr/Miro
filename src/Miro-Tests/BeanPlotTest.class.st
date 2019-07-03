"
A BeanPlotTest is a test class for testing the behavior of BeanPlot
"
Class {
	#name : #BeanPlotTest,
	#superclass : #MiroPlotTest,
	#category : #'Miro-Tests-Core'
}

{ #category : #accessing }
BeanPlotTest >> actualClass [
	^ BeanPlot
]

{ #category : #accessing }
BeanPlotTest >> matchingDataFrame [
	^ 'N+4P'
]

{ #category : #accessing }
BeanPlotTest >> notMatchingDataFrame [
	^ 'N+3P'
]
