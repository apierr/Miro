Class {
	#name : #PlotHandler,
	#superclass : #WARestfulHandler,
	#category : #'Miro-REST'
}

{ #category : #'class initialization' }
PlotHandler class >> initialize [
   WAAdmin register: self at: 'miro-api'
]

{ #category : #accessing }
PlotHandler >> acceptedDataFrame:aString [
	<get>
	<produces: 'text/json'>
	<path: '/acceptedDataFrame?plot={aString}'>
	^ (aString asClass ) acceptedDataFrame asJavascript

]

{ #category : #accessing }
PlotHandler >> acceptedPlot:aString [
	<get>
	<produces: 'text/json'>
	<path: '/acceptedPlot?dataframe={aString}'>
	^ 'TODO'

]

{ #category : #accessing }
PlotHandler >> allPlots [
	<get>
	<produces: 'text/json'>
	^ MiroPlot allSubclasses asJavascript
]
