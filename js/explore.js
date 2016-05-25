// Takes a string as an argument
// Iterate through each letter of the string
// Reverse the postion of each letter
// Print out the reversed string
function reverse(str) {
	var rev = '';
	for (var i = str.length - 1; i >= 0; i --)
	rev += str[i];
	return rev;
}

console.log(reverse("Hello"))

var stringChoice = reverse("String")

if (1==1) {
	console.log(stringChoice)
}