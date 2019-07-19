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
	" example http://localhost:8080/miro-api/acceptedDataFrame/Box"

	<get>
	<path: '/acceptedDataFrame/{aString}'>
	^ [ (MiroPlot named: aString) acceptedDataFrame asJavascript ]
		on: NotFound
		do: [ 'Error got ' , aString , ' but was expecting on of those: '
				, (MiroPlot allReportKinds collect: #displayName) asString ]
]

{ #category : #accessing }
PlotHandler >> acceptedPlot: aString [
	" example http://localhost:8080/miro-api/acceptedPlot/N%2B4P"

	<get>
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
