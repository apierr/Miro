Class {
	#name : #BarPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #rendering }
BarPlot >> plotOnChartJs [
	|chartData|
	chartData := (Chart2dData
		xObjects: {'bar' . 'foo' . 'cla'  }
		multiYObjects: {('A' -> {65 . 59 . 60  }). ('B' -> {50 . 48 . 40 })})
		multiValueTooltip: '<label> spent <value> min in <key>';
		chartType: ChartBar;
		yourself.
	^ (ChartJsComponent data: chartData)
]
