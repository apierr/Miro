Class {
	#name : #ChartDemo,
	#superclass : #WAComponent,
	#category : #BCDash
}

{ #category : #rendering }
ChartDemo >> renderContentOn: html [
	html render: (ChartJsComponent data: (Chart2dData xObjects: (1 to: 10) function: [ :x | x * (x + 1) ])).
]
