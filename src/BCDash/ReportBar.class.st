Class {
	#name : #ReportBar,
	#superclass : #Reports,
	#category : #BCDash
}

{ #category : #rendering }
ReportBar >> renderContentOn: html [
	|chartData|
	chartData := (Chart2dData
		xObjects: {'Eating' . 'Drinking' . 'Sleeping'  }
		multiYObjects: {('Guillaume' -> {65 . 59 . 60  }). ('Cyril' -> {50 . 48 . 40 })})
		multiValueTooltip: '<label> spent <value> min in <key>';
		chartType: ChartBar;
		yourself.
	html render: (ChartJsComponent data: chartData)
]
