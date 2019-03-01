Class {
	#name : #ReportBullet,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
ReportBullet >> imageUrl [
	^'https://static.infragistics.com/marketing/Website/products/wpf/control-images/gauges/bullet-graph/wpf-bulletgraph-configurable-orientation-and-direction-l.png?v=201805100900'
]

{ #category : #rendering }
ReportBullet >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
