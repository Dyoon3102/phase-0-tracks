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
	console.log(longWord)
}

longPhrase(fruits);
longPhrase(veggie);
longPhrase(carBrand);

// Release 1

// Create function that takes two objects and checks to see if the objects share at least one key-value pair
// Take two key-value pair objects as arguments
// Create a conditional statement that returns true if at least one key-value pair match
// If no key-value pair match, returns false
function matchMaker(objOne, objTwo) {
	outcome = '';
	if (objOne.name == objTwo.name || objOne.age == objTwo.age) {
	outcome = true;
	}else{
	outcome = false;
	}
	console.log(outcome);
}

matchMaker({name: "Robert", age: 24}, {name: "Jayce", age :24});
matchMaker({name: "Eghert", age: 32}, {name: "Eghert", age :5});
matchMaker({name: "Maggie", age: 18}, {name: "Ryder", age: 78});