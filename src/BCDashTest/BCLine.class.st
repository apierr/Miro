Class {
	#name : #BCLine,
	#superclass : #Object,
	#instVars : [
		'data',
		'labels'
	],
	#category : #BCDashTest
}

{ #category : #accessing }
BCLine >> data: aCollection [ 
	
	data := aCollection
]

{ #category : #accessing }
BCLine >> data: dataCollection labels: labelCollection [ 
	data := dataCollection.
	labels := labelCollection
]

{ #category : #initialization }
BCLine >> initialize [ 
	
	data := #().
	labels := #()
]

{ #category : #accessing }
BCLine >> keys [

	^ labels ifEmpty: [ labels := data collect: [ :each | each asString ] ]
]

{ #category : #accessing }
BCLine >> labelledData: aCollection [ 
	
	data := aCollection collect: #key.
	labels := aCollection collect: #value
]

{ #category : #accessing }
BCLine >> labels: aCollection [ 
	labels := aCollection
]

{ #category : #'advanced accessing' }
BCLine >> maxValue [
	
	| max |
	"labelledData is cmoposed of pair value x label"
	max := data anyOne. 
	data do: [ :each | max := each max: max ].
	^ max
]
