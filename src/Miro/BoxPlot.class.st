Class {
	#name : #BoxPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #rendering }
BoxPlot >> renderContentOn: html [
	html render: (self view: #(1 4 4 4 5 5 5 8)).

]

{ #category : #accessing }
BoxPlot >> view: dataList [
	| chartData list bp|
	list := MiroListOfSingleValues new data: dataList.
	bp := MiroBoxPlotter new on: list.
	chartData := Chart2dData
		xObjects: #(SLOC)
		function: [ :aPlayer | 
			ChartBoxPlotData
				lowest: bp minimum 
				firstQuartile: bp firstQuartile
				median: bp median 
				thirdQuartile: bp lastQuartile
				highest: bp maximum ].
	chartData chartType: ChartBoxPlot.
	^(ChartJsComponent data: chartData).
]
