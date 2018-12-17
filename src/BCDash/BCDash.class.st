Class {
	#name : #BCDash,
	#superclass : #WAComponent,
	#instVars : [
		'a',
		'b',
		'count'
	],
	#category : #BCDash
}

{ #category : #accessing }
BCDash >> a [
	^a
]

{ #category : #accessing }
BCDash >> b [
	^b
]

{ #category : #rendering }
BCDash >> initialize [
	super initialize.
	count := 0.
	a := 0.
	b := 0
]

{ #category : #rendering }
BCDash >> renderContentOn: html [
	html heading: count

]
