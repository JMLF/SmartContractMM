"
This is another type of function. If an event is emitted, it stores the arguments passed in transaction logs. These logs are stored in blockchain
and are accessible using the address of the contract for as long as the
contract remains present in the blockchain. An event is actually a function that throws a trigger over another smart contract in the blockchain
procedure.


"
Class {
	#name : #SCEvent,
	#superclass : #SCFunction,
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCEvent class >> annotation [

	<FMClass: #Event super: #SCFunction>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]
