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

console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]))
console.log(longestPhrase(["Hello World!", "Banana", "Auto"]))
console.log(longestPhrase(["Beautiful", "Onomatopeia", "The fishermen sails at dawn"]))



//------PROBLEM TWO------

//






//------PROBLEM THREE------



























