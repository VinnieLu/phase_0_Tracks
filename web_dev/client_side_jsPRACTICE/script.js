console.log("Hello world! My script is running!");
var els = document.getElementsByTagName("em");
var el = els[0];
el.style.border = "3px solid pink";
var photo = document.getElementById("lizard-photo");
el.hidden = false;
el.draggable = true;
photo.draggable = true;
photo.style.boxShadow = "10px 10px 5px #888888";
var lists = document.getElementsByTagName("li");

for(var i = 0; i < 1; i++) {
	lists[i].style.backgroundColor = "blue";
	lists[i + 1].style.backgroundColor = "green";
}


function addBorder() {
	photo.style.border = "10px solid red";
}

function removeBorder() {
	photo.style.border = "10px solid white";
}

function returnPicture() {
	photo.hidden = true
}

photo.hidden = false
photo.addEventListener("click", returnPicture)

var buttons = document.getElementsByTagName("button")
buttons[0].addEventListener("click", addBorder);
buttons[1].addEventListener("click", removeBorder);

