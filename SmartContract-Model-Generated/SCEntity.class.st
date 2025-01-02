Class {
	#name : #SCEntity,
	#superclass : #MooseEntity,
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
SCEntity class >> isAbstract [

	<generated>
	^ self == SCEntity
]

{ #category : #meta }
SCEntity class >> metamodel [

	<generated>
	^ SCModel metamodel
]
