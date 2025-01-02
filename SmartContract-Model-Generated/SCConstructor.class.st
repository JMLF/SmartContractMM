"
This is a function that creates a new instance of the smart contract. Each smart contract must have at least one of this type of Function
(either implicitly or explicitly).


"
Class {
	#name : #SCConstructor,
	#superclass : #SCFunction,
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCConstructor class >> annotation [

	<FMClass: #Constructor super: #SCFunction>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]
