Class {
	#name : #MiroValue,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'Miro-Data'
}

{ #category : #testing }
MiroValue >> isLabel [
	^ (self value isNumber) not
]

{ #category : #testing }
MiroValue >> isNumber [
	^ self value isNumber 
]

{ #category : #accessing }
MiroValue >> value [
	^ value
]

{ #category : #accessing }
MiroValue >> value: anObject [
	value := anObject
]
