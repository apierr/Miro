Class {
	#name : #Reports,
	#superclass : #ComponentPage,
	#category : #'BCDash-Core'
}

{ #category : #accessing }
Reports class >> allReportKinds [
	^ self allSubclasses sorted: #priority ascending
]

{ #category : #accessing }
Reports class >> displayName [
	^ self asString allButFirst: 6
]

{ #category : #accessing }
Reports class >> priority [
	^ 1
]
