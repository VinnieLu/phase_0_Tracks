// define a function "reverse" that takes a parameter of a word. 
// create a variable reversedWord that is equal to an empty string, and place it within the function
// create a for loop within the function with a counter equal to the length of the word - 1, a conditional of >= zero and a counter --.
// in the loop body, add the word at the counter into the empty string reversedWord


function reverse(word) {
	reversedWord = ""
	for (i = (word.length - 1); i >=0; i--) {
		reversedWord += word[i]
	}
return reversedWord
}

console.log(reverse("Hello"))
console.log(reverse("Problem One"))
new_string = (reverse("Happy Anniversary"))


var isNamedVinnie = true;
var isSuperCool = true;

if (isNamedVinnie && isSuperCool) {
	console.log(new_string);
}