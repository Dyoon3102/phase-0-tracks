// Release 0
var fruits = ["apple", "pear", "watermelon", "melon", "grape"];
var veggie = ["tomato", "cucumber", "carrot", "celery", ""];
var carBrand = ["Honda", "Toyota", "Ford", "Chrysler", "Mitsubishi"];

// Create a function that finds the longest word in an array
// Take an array as an argument
// Iterate through each object in array
// Create an empty string variable for use in comparison
// Compare each objects in array for the longest word
// Return/print the longest word
function longPhrase(newArray) {
	var longWord = '';
	for (var i = 0; i < newArray.length; i ++) {
		if (newArray[i].length > longWord.length) {
		longWord = newArray[i];
		}
	}
	console.log("The longest word is " + longWord);
}

// Release 1

// Create function that takes two objects and checks to see if the objects share at least one key-value pair
// Take two key-value pair objects as arguments
// Create a conditional statement that returns true if at least one key-value pair match
// If no key-value pair match, returns false


function matchMaker(objOne, objTwo) {
	outcome= '';
	if (objOne.name == objTwo.name || objOne.age == objTwo.age) {
	outcome = true;
	}else{
	outcome = false;
	}
	console.log(outcome);
}

// Release 2

// Create function that takes an integer for length, and build and returns an array of strings of the given length
// Take an integer as an argument to create the number of words to an array list
// Declare a variable as letters of alphabet
// Generate a random word with random index of alphabet list with a randomly created word length

function randomWord(num){
	for(var a = num; a > 0; --a){
	function randomString(length) {
	    var mask = 'abcdefghijklmnopqrstuvwxyz';
	    var result = '';
	    for (var i = length; i > 0; --i) result += mask[Math.floor(Math.random() * mask.length)];
	    list.push(result);
	    return result;
	}
	var wordLength = Math.floor((Math.random() * 10) + 1);
	console.log(randomString(wordLength));
	}
}

// Driver code
var list = [];
longPhrase(fruits);
longPhrase(veggie);
longPhrase(carBrand);
console.log('----');
matchMaker({name: "Robert", age: 24}, {name: "Jayce", age :24});
matchMaker({name: "Eghert", age: 32}, {name: "Eghert", age :5});
matchMaker({name: "Maggie", age: 18}, {name: "Ryder", age: 78});
console.log('----');
randomWord(3);
longPhrase(list);
