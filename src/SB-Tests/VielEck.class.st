Class {
	#name : #VielEck,
	#superclass : #Morph,
	#instVars : [
		'n'
	],
	#category : #'SB-Tests'
}

{ #category : #drawing }
VielEck >> drawOn: aCanvas [

	| center radius point vertices |
	self color: Color black.

	center := self center.
	radius := (self width min: self height) / 2.
	vertices := OrderedCollection new.
	1 to: n do: [ :i |
		point := (center x + ((2 * Float pi / n * (i-1)) sin * radius)) @ 
			(center y + ((2 * Float pi / n * (i-1)) cos * radius)).
			vertices add: point.  ].
	super drawOn: aCanvas.
	aCanvas drawPolygon: vertices fillStyle: (SolidFillStyle color: Color yellow).
]

{ #category : #initialize }
VielEck >> ecken: ecken [
	n := ecken.
	self changed.
]
