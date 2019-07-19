Class {
	#name : #BoxPlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data'
	],
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
BoxPlot class >> acceptedDataFrame [
	
	^ { 'N+3P'. 'N+4P'. '1N+1C+4P'. '2N+4P' } 
]

{ #category : #'as yet unclassified' }
BoxPlot class >> acceptedInputs [

	^ { '1V' }
]

{ #category : #accessing }
BoxPlot >> initialize [
	super initialize.
	data := #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
BoxPlot >> plotOnChartJs [
	| chartData list bp |
	list := MiroListOfSingleValues new data: data.
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
	^ ChartJsComponent data: chartData
]

{ #category : #plotting }
BoxPlot >> plotOnRoassal [
	| b ds |
	b := RTGrapher new.
	b extent: 100 @ 300.
	ds := RTBoxPlotDataSet new.
	ds points: data.
	b add: ds.
	b build.

	^ b view
]
