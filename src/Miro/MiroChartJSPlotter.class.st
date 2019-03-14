Class {
	#name : #MiroChartJSPlotter,
	#superclass : #Object,
	#category : #'Miro-PlotterStrategies'
}

{ #category : #plotting }
MiroChartJSPlotter >> plot: aMiroPlot [

	^ aMiroPlot plotOnChartJs
]
