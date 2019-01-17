Class {
	#name : #MyContactAddress,
	#superclass : #WAComponent,
	#instVars : [
		'addressForm'
	],
	#category : #'BCDash-MaDemo'
}

{ #category : #initialization }
MyContactAddress >> children [
        ^ Array with: addressForm
]

{ #category : #initialization }
MyContactAddress >> initialize [
        super initialize.
        addressForm := Address example1 asComponent
]
