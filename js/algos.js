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