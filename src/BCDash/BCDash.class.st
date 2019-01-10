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
BCDash >> initialize [
	super initialize.
	count := 0

]

{ #category : #accessing }
BCDash >> renderContentOn: html [
	html heading: count

]
