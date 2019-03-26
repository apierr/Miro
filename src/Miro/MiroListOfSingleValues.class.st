Class {
	#name : #MiroListOfSingleValues,
	#superclass : #MiroData,
	#instVars : [
		'data',
		'labels'
	],
	#category : #'Miro-Data'
}

{ #category : #accessing }
MiroListOfSingleValues >> data [
	
	^ data 
]

{ #category : #accessing }
MiroListOfSingleValues >> data: aCollection [ 
	
	data := aCollection
]

{ #category : #accessing }
MiroListOfSingleValues >> data: dataCollection labels: labelCollection [ 
	data := dataCollection.
	labels := labelCollection
]

{ #category : #initialization }
MiroListOfSingleValues >> initialize [ 
	
	data := #().
	labels := #()
]

{ #category : #accessing }
MiroListOfSingleValues >> keys [

	^ labels ifEmpty: [ labels := data collect: [ :each | each asString ] ]
]

{ #category : #accessing }
MiroListOfSingleValues >> labelledData: aCollection [ 
	
	data := aCollection collect: #key.
	labels := aCollection collect: #value
]

{ #category : #accessing }
MiroListOfSingleValues >> labels: aCollection [ 
	labels := aCollection
]

{ #category : #'advanced accessing' }
MiroListOfSingleValues >> maxValue [
	
	| max |
	max := data anyOne. 
	data do: [ :each | max := each max: max ].
	^ max
]

{ #category : #api }
MiroListOfSingleValues >> median [
	self shouldBeImplemented.
]

{ #category : #'advanced accessing' }
MiroListOfSingleValues >> minValue [
	
	| max |
	max := data anyOne. 
	data do: [ :each | max := each min: max ].
	^ max
]

{ #category : #accessing }
MiroListOfSingleValues >> mostFrequentValue [
	| mostFrequent |
	mostFrequent := data anyOne. 
   self flag: #todo.
	"Finish to implement"
	^ mostFrequent
]

{ #category : #accessing }
MiroListOfSingleValues >> rangeValue [
	^ self maxValue - self minValue 
]
