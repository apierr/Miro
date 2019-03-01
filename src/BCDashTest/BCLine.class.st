Class {
	#name : #BCLine,
	#superclass : #Object,
	#instVars : [
		'labelledData'
	],
	#category : #BCDashTest
}

{ #category : #accessing }
BCLine >> labelledData: aCollection [ 
	
	labelledData := aCollection
]

{ #category : #'advanced accessing' }
BCLine >> maxValue [
	
	| max |
	"labelledData is cmoposed of pair value x label"
	max := labelledData anyOne key. 
	labelledData do: [ :each | max := each key max: max ].
	^ max
]
