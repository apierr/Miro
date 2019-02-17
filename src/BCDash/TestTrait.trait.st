Trait {
	#name : #TestTrait,
	#category : #BCDash
}

{ #category : #rendering }
TestTrait >> re: html [
	html div
		with: html nextId .
    html mdlButton
        onClick:
            ((html jQuery id: html lastId) load html: 'ciao';
                onComplete: 'componentHandler.upgradeDom()');
        with: html lastId .
]

{ #category : #rendering }
TestTrait >> registerUserWithEmail: html password: id aId: aBoolean [
   ^ aBoolean
]

{ #category : #rendering }
TestTrait >> registerUserWithEmail: html password: aPassword isAdmin: aBoolean [
   ^ aBoolean
]

{ #category : #rendering }
TestTrait >> renderDialog: html [
   html mdlButton
		id: html nextId;
		with: 'Open'.
	html mdlDialog
		openButtonId: html lastId;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]
		"
    html mdlButton
        onClick:
            ((html jQuery id: html lastId) load html: 'ciao';
                onComplete: 'componentHandler.upgradeDom()');
        with: '+'."
]

{ #category : #rendering }
TestTrait >> renderId:html [
	html div
		with: html nextId .
    html mdlButton
        onClick:
            ((html jQuery id: html lastId) load html: 'ciao';
                onComplete: 'componentHandler.upgradeDom()');
        with: html lastId .
]

{ #category : #rendering }
TestTrait >> renderId:html id: aId [
	html div
		with: html nextId .
    html mdlButton
        onClick:
            ((html jQuery id: html lastId) load html: 'ciao';
                onComplete: 'componentHandler.upgradeDom()');
        with:  aId .
]
