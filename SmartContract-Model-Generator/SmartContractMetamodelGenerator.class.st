Class {
	#name : #SmartContractMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'smartContract',
		'variable',
		'function',
		'modifier',
		'event',
		'constructor'
	],
	#category : #'SmartContract-Model-Generator'
}

{ #category : #accessing }
SmartContractMetamodelGenerator class >> packageName [

^ #'SmartContract-Model-Generated'
]

{ #category : #accessing }
SmartContractMetamodelGenerator class >> prefix [ 

^#'SC'
]

{ #category : #definition }
SmartContractMetamodelGenerator >> defineClasses [

	super defineClasses.
	smartContract := builder
		                 newClassNamed: #SmartContract
		                 comment:
			                 'This meta-class represents the smart contract
concept and is identified by two attributes, the ID and the name'.
	variable := builder
		            newClassNamed: #Variable
		            comment: '. The variable
meta-class represents the smart contract''s set of variables. It includes two
attributes: name, representing the name of the variable and type, representing
its type (boolean, string, integer, etc.)'.
	function := builder
		            newClassNamed: #Function
		            comment: 'The function meta-class represents any
function that can act on the smart contract by changing its status. Function
can have an output parameter (represented as a Variable) and a set of input
parameters (also represented as a Variable)'.
	modifier := builder
		            newClassNamed: #Modifier
		            comment:
			            'This is a type of function that can be used to agilely change the
behavior of functions. It can automatically check a condition before
executing a function.'.
	event := builder
		         newClassNamed: #Event
		         comment:
			         'This is another type of function. If an event is emitted, it stores the arguments passed in transaction logs. These logs are stored in blockchain
and are accessible using the address of the contract for as long as the
contract remains present in the blockchain. An event is actually a function that throws a trigger over another smart contract in the blockchain
procedure.'.
	constructor := builder
		               newClassNamed: #Constructor
		               comment:
			               'This is a function that creates a new instance of the smart contract. Each smart contract must have at least one of this type of Function
(either implicitly or explicitly).'
]

{ #category : #definition }
SmartContractMetamodelGenerator >> defineHierarchy [ 

	super defineHierarchy. 
	
	"Est-ce que l'on doit faire apparaitre toutes nos classes ? Si oui besoin d'un container global ?"
	constructor --|> function.
	modifier --|> function.
	event --|> function.
]

{ #category : #definition }
SmartContractMetamodelGenerator >> defineProperties [ 

super defineProperties.
    (smartContract property: #id type: #String)
       comment: 'The id of the SC'.
    (smartContract property: #name type: #String)
       comment: 'The name of the SC'.
    (variable property: #name type: #String)
       comment: 'The name of the variable'.
    (variable property: #type type: #String)
       comment: 'The type of the variable'.
    (function property: #name type: #String)
       comment: 'The name of the function'.

]

{ #category : #definition }
SmartContractMetamodelGenerator >> defineRelations [

	super defineRelations.
	((smartContract property: #functions) comment: 'Functions in the SC')
	<>-* ((function property: #contract) comment:
			 'The SC that contain this function').

	((smartContract property: #staticProperties) comment:
		 'Static properties of the smart contract') <>-* variable.

	((variable property: #entryFunctions) comment:
		 'Functions that use this variable as input') *-* function.

	((variable property: #exitFunction) comment:
		 'The function that outputs this variable') -* function
]
