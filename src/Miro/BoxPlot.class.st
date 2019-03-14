Class {
	#name : #BoxPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #accessing }
BoxPlot >> plotOnChartJs [

	^ self view: #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
BoxPlot >> plotOnRoassal [
	| exporter b ds filename |
	b := RTGrapher new.
	b extent: 100 @ 300.
	ds := RTBoxPlotDataSet new.
	ds points: #(1 4 4 4 5 5 5 9).
	b add: ds.
	b build.
	
	filename := 'temp.png'.
	exporter := RTPNGExporter new.
	exporter builder: b build.
	exporter fileName: filename asFileReference fullName.
	exporter exportToFile.
	^ MiroSeasideImageComponent on: filename asFileReference
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
