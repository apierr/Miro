Class {
	#name : #GridContainer,
	#superclass : #ComponentGrid,
	#instVars : [
		'containerId'
	],
	#category : #BCDash
}

{ #category : #rendering }
GridContainer class >> containerID: id [
	^ self new containerID: id;
	yourself 
]

{ #category : #accessing }
GridContainer >> containerId [
	"comment stating purpose of message"
	^containerId 
]

{ #category : #accessing }
GridContainer >> containerId: id [
	containerId:= id
]

{ #category : #rendering }
GridContainer >> renderContentOn:html [
	"comment stating purpose of message"
	 html div
      id: html nextId;
		with: html lastId, ' ', 'graph object' .
	self containerId:  html lastId.
	
	html mdlButton
		id: html nextId;
		fab;
		colored;
		with: self containerId.
	html mdlDialog
		openButtonId: html lastId;
		with: [ html render: (GridDialog containerId: self containerId) . ]

]
