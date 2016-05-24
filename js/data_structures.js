var colors = ["blue", "red", "cyan", "green"];
var horseNames = ["Thunder", "Wildfire", "Whispers", "Inego Montoya"];


// colors.push("magenta");
// horseNames.push("Lefty");
// console.log(colors)
// console.log(horseNames)
// Notice the notation on line   : objName[[propertyKeyname]] = propertyValue[i]

var horseColor = {}
for (var i = 0; i < horseNames.length; i++) {
  horseColor[horseNames[i]] = colors[i];
}
console.log(horseColor)