Class {
	#name : #MiroReader,
	#superclass : #Component,
	#instVars : [
		'fileName',
		'csvReader'
	],
	#category : #'Miro-Reader'
}

{ #category : #accessing }
MiroReader >> csvReader [
	^ (NeoCSVReader on: ((self fileName) asFileReference readStream))
        separator: $,;
        namedColumnsConfiguration;
            upToEnd.
]

{ #category : #accessing }
MiroReader >> csvReader: anObject [
	csvReader := anObject
]

{ #category : #accessing }
MiroReader >> fileName [
	^ fileName
]

{ #category : #accessing }
MiroReader >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
MiroReader >> initialize [
	super initialize.
	self fileName: 'pharo-local/iceberg/apierr/Miro/df.csv'
]
