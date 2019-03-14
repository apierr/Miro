Class {
	#name : #MiroSeasideImageComponent,
	#superclass : #WAComponent,
	#instVars : [
		'imageUrl'
	],
	#category : #'Miro-SeasideComponents'
}

{ #category : #'instance creation' }
MiroSeasideImageComponent class >> on: anImageUrl [

	^ self new
		imageUrl: anImageUrl;
		yourself
]

{ #category : #accessing }
MiroSeasideImageComponent >> imageUrl [
	^ imageUrl
]

{ #category : #accessing }
MiroSeasideImageComponent >> imageUrl: anObject [
	imageUrl := anObject
]

{ #category : #rendering }
MiroSeasideImageComponent >> renderOn: html [

	| asciiContents base64Contents |
	asciiContents := (self imageUrl asFileReference readStreamEncoded: #null) contents.
	base64Contents := ZnUtils encodeBase64: asciiContents.
	html image
		url: 'data:image/png;base64,', base64Contents
]
