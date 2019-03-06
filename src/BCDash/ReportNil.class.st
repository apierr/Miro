Class {
	#name : #ReportNil,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #accessing }
ReportNil class >> displayName [
	^ 'Deletion'
]

{ #category : #accessing }
ReportNil class >> priority [
	^ 100
]

{ #category : #rendering }
ReportNil >> renderContentOn: html [
	''
]
