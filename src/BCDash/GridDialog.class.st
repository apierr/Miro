Class {
	#name : #GridDialog,
	#superclass : #ComponentGrid,
	#category : #BCDash
}

{ #category : #rendering }
GridDialog >> renderContentOn: html [		
	html mdlDialogTitle: 'Graph Category'.
	html mdlDialogContent: [ html render: GraphList new ] 
]
