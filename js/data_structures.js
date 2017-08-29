var colors = ["red", "blue", "green", "pink"];

var names = ["Man-O-War", "Secretariat", "Seabiscuit", "Speedy"];

colors.push("silver");
names.push("Trigger");

var horses = {};
for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses)

function Car(make, model, year, isNew) {
	this.make = make;
	this.model = model;
	this.year = year;
	this.isNew = isNew
	this.honk = function() { console.log("*BEEP BEEP*"); };
	console.log("Your car is ready...")
}

console.log("Preparing the car...")
var newCar = new Car("Toyota", "Corolla", 2005, false);
console.log(newCar);
newCar.honk();

console.log("Preparing the car...")
var secondCar = new Car("Jeep", "Patriot", 2014, false);
console.log(secondCar)
secondCar.honk()

console.log("Preparing the car...")
var thirdCar = new Car("Maserati", "GranTurismo", 2017, true)
console.log(thirdCar)
thirdCar.honk()