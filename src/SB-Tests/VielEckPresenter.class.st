Class {
	#name : #VielEckPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'vielEckMorph',
		'eckenNumberInput'
	],
	#category : #'SB-Tests'
}

{ #category : #specs }
VielEckPresenter class >> defaultSpec [
	^ SpGridLayout new
		add: #eckenNumberInput at: 1 @ 1;
		add: #vielEckMorph at: 1 @ 2;
		yourself
]

{ #category : #accessing }
VielEckPresenter >> eckenNumberInput [
	^ eckenNumberInput
]

{ #category : #accessing }
VielEckPresenter >> eckenNumberInput: anObject [
	eckenNumberInput := anObject
]

{ #category : #initialization }
VielEckPresenter >> initializePresenter [
	vielEckMorph := self
		instantiate: (SpMorphPresenter new morph: (VielEck new ecken: 3)).
	eckenNumberInput := self newNumberInput rangeMinimum: 3 maximum: 100.
	eckenNumberInput number: 3.
	eckenNumberInput
		whenNumberChangedDo: [ :number | vielEckMorph morph ecken: number ].
	self focusOrder
		add: eckenNumberInput;
		add: vielEckMorph
]

{ #category : #accessing }
VielEckPresenter >> vielEckMorph [
	^ vielEckMorph
]

{ #category : #accessing }
VielEckPresenter >> vielEckMorph: anObject [
	vielEckMorph := anObject
]
