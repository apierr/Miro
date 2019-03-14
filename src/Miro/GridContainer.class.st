Class {
	#name : #GridContainer,
	#superclass : #ComponentGrid,
	#instVars : [
		'containerId'
	],
	#category : #Miro
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
GridContainer >> initialize [ 
	"comment stating purpose of message"

	super initialize .
	"TODO: I would like to generate the id here (html lastId). Now I  generate the lastId in renderContentOn"
	containerId  := nil  

]

{ #category : #rendering }
GridContainer >> renderContentOn:html [
	"QUESTION: containerId and self self containerId are the same?
	becasuse if I do |containerId| it says |Name already defined| ...
	containerId should be the instance variable and self containerId: the method! 
	It makes me confused. Is this correct?"

	containerId :=  html nextId.
	
	html mdlButton
		id: html nextId;
		fab;
		colored;
		with: '+'.
	html mdlDialog
		openButtonId: html lastId ;
		with: [ html render: (GridDialog containerId: self containerId) . ].

	 html div
      id: containerId;
		class: 'grid-container';
		with: ''. "containerId, ' ', ' graph object' ."
	self containerId:  containerId.
]
