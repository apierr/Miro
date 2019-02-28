Class {
	#name : #ReportBar,
	#superclass : #Reports,
	#category : #BCDash
}

{ #category : #rendering }
ReportBar >> renderContentOn: html [
	|chartData|
	chartData := (Chart2dData
		xObjects: {'bar' . 'foo' . 'cla'  }
		multiYObjects: {('A' -> {65 . 59 . 60  }). ('B' -> {50 . 48 . 40 })})
		multiValueTooltip: '<label> spent <value> min in <key>';
		chartType: ChartBar;
		yourself.
	html render: (ChartJsComponent data: chartData)
]
