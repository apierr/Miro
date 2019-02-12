Class {
	#name : #BtnAdd,
	#superclass : #ComponentGrid,
	#category : #BCDash
}

{ #category : #rendering }
BtnAdd >> renderContentOn: html [
	html mdlButton
		id: html nextId;
		fab;
		colored;
		with: '+'.
	html mdlDialog
		openButtonId: html lastId;
		with: [ html render: GridDialog  new. ]
]
