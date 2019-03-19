Class {
	#name : #BulletPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
BulletPlot >> imageUrl [
	^'https://static.infragistics.com/marketing/Website/products/wpf/control-images/gauges/bullet-graph/wpf-bulletgraph-configurable-orientation-and-direction-l.png?v=201805100900'
]

{ #category : #rendering }
BulletPlot >> plotOnRoassal [

	| view |
	view := RTView new.
	view add: (RTBitmap new
		form: (Form fromBinaryStream: (
			(ZnEasy get: self imageUrl)
				contents readStream));
		yourself) element.
	^ view
]

{ #category : #rendering }
BulletPlot >> renderContentOn: html [
	
	super renderContentOn: html.
]
