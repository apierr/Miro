Class {
	#name : #GridContainer,
	#superclass : #ComponentGrid,
	#category : #BCDash
}

{ #category : #rendering }
GridContainer >> renderContentOn: html [
	"comment stating purpose of message"
	 html div
      id: html nextId;
		with: 'graph object'.
	html div
		with: MDLExampleRootDialogRoot new
]
