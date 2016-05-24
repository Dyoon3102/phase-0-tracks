var colors = ["blue", "red", "cyan", "green"];
var horseNames = ["Thunder", "Wildfire", "Whispers", "Inego Montoya"];


colors.push("magenta");
horseNames.push("Lefty");
// console.log(colors)
// console.log(horseNames)
// Notice the notation on line   : objName[[propertyKeyname]] = propertyValue[i]

var horseColor = {}
for (var i = 0; i < horseNames.length; i++) {
  horseColor[horseNames[i]] = colors[i];
}
console.log(horseColor)

// CLASSLIKE BEHAVIOR

// In addition to literal construction, which is
// done by simply typing out the data structure ...
var dog = {name: 'Spot', 'age': 3, isGoodDog: true};

// ... we can write what's called a constructor function
// that can be used to make lots of dogs.
// We don't HAVE to write a constructor function,
// but if we know we'll need a bunch of objects with
// the same properties, such functions are handy.
// Constructor functions have capitalized names.
function Dog(name, age, isGoodDog) {
  // In this context, 'this' refers to 
  // the individual dog we're making
  console.log("Our new dog:", this);
  
  // Therefore, this.name is sort of the Ruby
  // equivalent of @name
  this.name = name;
  this.age = age;
  this.isGoodDog = isGoodDog;
  
  // As for behavior, a function is a perfectly 
  // valid property value ... whoa!
  this.bark = function() { console.log("Woof!"); };
  
  console.log("DOG INITIALIZATION COMPLETE");
}

console.log("Let's build a dog ...");
// Here is where we call that constructor function
// that we just made ...
var anotherDog = new Dog("Duchess", 8, true);
console.log(anotherDog);
console.log("Our dog can bark:");
anotherDog.bark();
console.log("----");

console.log("Let's build another dog ...");
var yetAnotherDog = new Dog("Fido", 4, false);
console.log(yetAnotherDog.name);
console.log("This new dog can bark, too:");
yetAnotherDog.bark();
console.log("----")

// You can use functions as values anytime, not just
// in constructor functions. Here we use literal
// construction:
var bird = {
  name: 'Polly', 
  'age': 3, 
  wantsCracker: true, 
    speak: function() { 
      if (this.wantsCracker) {
        console.log("Polly wants a cracker!");
      } else {
        console.log("Hello! Hello!");
      }
    }
};

bird.speak();
bird.wantsCracker = false;
bird.speak();

// You can add behavior the way you'd add any other key-value pair.
bird.newTrick = function() { console.log("*sings opera song*")};
bird.newTrick();
console.log('----');

function Car(make, model, transmission, gotRobbed) {
  this.make = make;
  this.model = model;
  this.transmission = transmission;
  this.gotRobbed = gotRobbed;
  
  this.jumpstart = function () {
    if (transmission == 'standard') {
      console.log('Smart thinking, getting standard transmission! You CAN jumpstart');
    } else {
      console.log('You have automatic transmission, so you are out of luck');
    }
  }
}

var mycar = new Car('1000mpg water car', 'Ford', 'standard', false);
console.log(mycar);
mycar.jumpstart();
console.log('----');
var dumbCar = new Car('total clunker', 'Honda', 'automatic', true);

console.log(dumbCar);
dumbCar.jumpstart();