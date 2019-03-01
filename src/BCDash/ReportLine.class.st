Class {
	#name : #ReportLine,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #rendering }
ReportLine >> renderContentOn: html [
	html render: (ChartJsComponent data: (Chart2dData xObjects: (1 to: 10) function: [ :x | x * (x + 1) ]))
]
