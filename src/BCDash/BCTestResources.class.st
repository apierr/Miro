Class {
	#name : #BCTestResources,
	#superclass : #BCValue,
	#category : #'BCDash-Value'
}

{ #category : #acccessing }
BCTestResources class >> labelledData [
	^ self new labelledData
]

{ #category : #acccessing }
BCTestResources class >> labelledData: par [
	^ self new labelledData:par
]

{ #category : #acccessing }
BCTestResources class >> lineKeys [
	^ self new lineKeys
]

{ #category : #acccessing }
BCTestResources class >> singleValue [
	^ self new singleValue
]

{ #category : #acccessing }
BCTestResources >> labelledData [
	^ { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
]

{ #category : #acccessing }
BCTestResources >> labelledData: par [
	"comment stating purpose of message"
	|moveActions|
	moveActions := {
  		'' -> { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
  		'max' -> 75.
		'min' -> 22.
	} asDictionary.
	
	^ (moveActions at: par) 
]

{ #category : #acccessing }
BCTestResources >> lineKeys [
	^ #('low' 'high' 'middle').
]

{ #category : #acccessing }
BCTestResources >> singleValue [
	^ { 22  . 75  . 55 }.
]
