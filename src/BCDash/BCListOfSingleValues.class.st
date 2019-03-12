Class {
	#name : #BCListOfSingleValues,
	#superclass : #Object,
	#instVars : [
		'data',
		'labels'
	],
	#category : #'BCDash-Data'
}

{ #category : #accessing }
BCListOfSingleValues >> data [
	
	^ data 
]

{ #category : #accessing }
BCListOfSingleValues >> data: aCollection [ 
	
	data := aCollection
]

{ #category : #accessing }
BCListOfSingleValues >> data: dataCollection labels: labelCollection [ 
	data := dataCollection.
	labels := labelCollection
]

{ #category : #initialization }
BCListOfSingleValues >> initialize [ 
	
	data := #().
	labels := #()
]

{ #category : #accessing }
BCListOfSingleValues >> keys [

	^ labels ifEmpty: [ labels := data collect: [ :each | each asString ] ]
]

{ #category : #accessing }
BCListOfSingleValues >> labelledData: aCollection [ 
	
	data := aCollection collect: #key.
	labels := aCollection collect: #value
]

{ #category : #accessing }
BCListOfSingleValues >> labels: aCollection [ 
	labels := aCollection
]

{ #category : #'advanced accessing' }
BCListOfSingleValues >> maxValue [
	
	| max |
	max := data anyOne. 
	data do: [ :each | max := each max: max ].
	^ max
]

{ #category : #api }
BCListOfSingleValues >> median [
	self shouldBeImplemented.
]

{ #category : #'advanced accessing' }
BCListOfSingleValues >> minValue [
	
	| max |
	max := data anyOne. 
	data do: [ :each | max := each min: max ].
	^ max
]

{ #category : #accessing }
BCListOfSingleValues >> mostFrequentValue [
	| mostFrequent |
	mostFrequent := data anyOne. 
   self flag: #todo.
	"Finish to implement"
	^ mostFrequent
]

{ #category : #accessing }
BCListOfSingleValues >> rangeValue [
	^ self maxValue - self minValue 
]