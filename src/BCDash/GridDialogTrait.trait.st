Trait {
	#name : #GridDialogTrait,
	#category : #BCDash
}

{ #category : #rendering }
GridDialogTrait >> renderContentOn: html [
	html div
		style: 'width: 100%; height: 100%; background-color: #ECEFF1;';
		with: GridDialog new.
]

{ #category : #rendering }
GridDialogTrait >> renderDialog: html [
	html div
]
