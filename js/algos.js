//------PROBLEM ONE------

//Create a function that takes an array as a parameter.
//In the function body, create an empty array called answer.
//Create a for loop with the counter at 0, the condition at counter less than array.length, the increment plus plus.
//Within that for loop, create an if statement stating that if the array at counter dot length is greater than the answer at zero index dot length, run pop on the answer, and push array at counter into the answer.
//After the for loop, return answer.



function longestPhrase(array) {
	answer = [" "];
	for (i = 0; i < array.length; i++) {
		if (array[i].length > answer[0].length) {
			answer.pop()
			answer.push(array[i])
		}
	}
	return answer
}

// console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))
// console.log(longestPhrase(["Hello World!", "Banana", "Auto"]))
// console.log(longestPhrase(["Beautiful", "Onomatopeia", "The fishermen sails at dawn"]))









//------PROBLEM TWO------
//THIS CODE WORKS

//Create a function matchingObjects which takes two variables, objectOne and objectTwo
//Create two empty arrays, an objectOnePropertiesValues, and an objectTwoPropertiesValues
//Create a for...in for the objectOne that takes each property and shovels it into objectOnePropertiesValues, and then takes each value and pushes it into objectOnePropertiesValues.
//Create a second for...in for the objectTwo that takes each property and pushes it into objectTwoPropertiesValues, and then takes each value and shovels it into objectTwoPropertiesValues.
//Test that this works.
//Create a for loop with counter at 0, condition if <= objectOnePropertiesValues.length, and addition += 2.
//Create an if/else statement, if objectOnePropertiesValues at counter equals objectTwoPropertiesValues at counter, and objectOnePropertiesValues at counter + 1 equals objectTwoPropertiesValues at counter + 1, return true.
//Outside of this if/else statements put return false.


function matchingObjects(objectOne, objectTwo) {
	objectOnePropertiesValues = [];
	objectTwoPropertiesValues = [];
	for (var property in objectOne) {
		objectOnePropertiesValues.push(property);
		objectOnePropertiesValues.push(objectOne[property]);
	}
	console.log(objectOnePropertiesValues);

	for (var property in objectTwo) {
		objectTwoPropertiesValues.push(property);
		objectTwoPropertiesValues.push(objectTwo[property]);
	}
	console.log(objectTwoPropertiesValues);

	for(i = 0; i <= objectOnePropertiesValues.length - 1; i += 2){
		if ((objectOnePropertiesValues[i] === objectTwoPropertiesValues[i]) && objectOnePropertiesValues[i + 1] === objectTwoPropertiesValues[i + 1]){
			return true
		}	
	return false
	}
}


// console.log(matchingObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}, {animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(matchingObjects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(matchingObjects({syphilis: true, condom: "Oops, I forgot!"}, {needsTo: "poop", hopes: "thereIsTP"}));







//------PROBLEM TWO ALTERNATE SOLUTION------
//THIS CODE ALMOST WORKS

//Create a function called syncingObjects that takes two parameters, object1 and object2.
//Create a for...in statement with property as the first value and object1 as the second value. In the body, write var object1Property equals property, and var object1Value equals object1[property].
//Within the body of the for...in, create another for...in with prop as the first value and object2 as the second value. Create an if statement if prop equals object1Property and object2[prop] equals object2Property, return true. 
//At some point write return false.

function syncingObjects(object1, object2) {
	for(var property in object1) {
		var object1Property = property
		var object2Property = object1[property]
		for(var prop in object2) {
			if ((prop === object1Property) && (object2[prop] === object2Property)) {
				return true
			}
		}
		return false
	}
}

// console.log(syncingObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}, {animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(syncingObjects({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(syncingObjects({syphilis: true, condom: "Oops, I forgot!"}, {needsTo: "poop", hopes: "thereIsTP"}));

//Right now it is only checking first property with first property, second property with second property. Shouldn't it check first property with first and second property, then second property with first and second property??









//------PROBLEM THREE------


//Create a function sentenceMaker that has a parameter of integer.
//Create an empty array called sentence.
//Create a function letterGenerator that doesn't take a parameter. Create a variable alphabet with a string of the alphabet. Create a variable letter that equals alphabet and in parentheses Math.floor(Math.random() * 27)
//Create a function wordGenerator that doesn't take a parameter. Create a variable word equal to an empty string. Create a variable randomTen that equals Math.floor(Math.random() * 10). Create a for loop with x = 0, conditional less than or equal to randomTen, incrementer ++. Inside the for loop, put word += letterGenerator
//Create a for loop with counter at 0, conditional at counter < integer, and increment at ++. Inside the loop, put sentence.push(wordGenerator).
//Outside of the for loop, print sentence to the console.

function sentenceMaker(integer) {
	sentence = []
	function letterGenerator() {
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		letter = Math.floor(Math.random() * 27)
	}
	function wordGenerator() {
		word = ""
		randomTen = Math.floor(Math.random() * 10)
		for (x = 0; x <= randomTen; x++) {
			word += letterGenerator
		}
	}
	for (x = 0; x < integer; x++) {
		sentence.push(wordGenerator)
	}
	return sentence 
}

// console.log(sentenceMaker(3))

// for(x = 0; x < 10; x++) {
// 	completeSentences = sentenceMaker(Math.floor(Math.random() * 10))
// 	console.log(completeSentences)
// 	console.log(longestPhrase(completeSentences))
// }



//Can I call function letterGenerator from inside of wordGenerator?
//Can I push onto a string? Can I += onto a string?
//Can I access the randomTen variable in the following for loop?
//Can I define a function within a function?