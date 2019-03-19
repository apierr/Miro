Class {
	#name : #MiroSeasideImageFromFormComponent,
	#superclass : #WAComponent,
	#instVars : [
		'form'
	],
	#category : #'Miro-SeasideComponents'
}

{ #category : #'instance creation' }
MiroSeasideImageFromFormComponent class >> on: aForm [

	^ self new
		form: aForm;
		yourself
]

{ #category : #accessing }
MiroSeasideImageFromFormComponent >> form [
	^ form
]

{ #category : #accessing }
MiroSeasideImageFromFormComponent >> form: anObject [
	form := anObject
]

{ #category : #rendering }
MiroSeasideImageFromFormComponent >> renderOn: html [

	| asciiContents base64Contents |
	asciiContents := (self imageUrl asFileReference readStreamEncoded: #null) contents.
	base64Contents := ZnUtils encodeBase64: asciiContents.
	html image
		url: 'data:image/png;base64,', base64Contents
]
