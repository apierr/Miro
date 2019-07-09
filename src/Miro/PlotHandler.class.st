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
PlotHandler >> acceptedDataFrame: aString [
	" example http://localhost:8080/miro-api/acceptedDataFrame/BoxPlot"

	<get>
	<produces: 'text/json'>
	<path: '/acceptedDataFrame/{aString}'>
	^ aString asClass acceptedDataFrame asJavascript
]

{ #category : #accessing }
PlotHandler >> acceptedPlot: aString [
	" example http://localhost:8080/miro-api/acceptedPlot/N%2B4P"

	<get>
	<produces: 'text/json'>
	<path: '/acceptedPlot/{aString}'>
	^ (MiroPlot plotsFor: aString) asJavascript
]

{ #category : #accessing }
PlotHandler >> allPlots [
	" example http://localhost:8080/miro-api/allPlots"

	<get>
	<produces: 'text/json'>
	^ MiroPlot allSubclasses asJavascript
]
