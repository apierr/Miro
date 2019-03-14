Class {
	#name : #GridDialog,
	#superclass : #ComponentGrid,
	#instVars : [
		'containerId'
	],
	#category : #Miro
}

{ #category : #accessing }
GridDialog class >> containerId: id [
	^ self new containerId: id;
	yourself 
]

{ #category : #accessing }
GridDialog >> containerId [
	^ containerId
]

{ #category : #accessing }
GridDialog >> containerId: anObject [
	containerId := anObject
]

{ #category : #rendering }
GridDialog >> renderContentOn: html [		
	html mdlDialogTitle: 'Graph list'. "self containerId."
	html mdlDialogContent: [ html render: (GridGraphList containerId: self containerId) ] 
]
