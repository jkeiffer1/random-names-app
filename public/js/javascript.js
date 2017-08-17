function myFunction() {
	var x = document.getElementById("myInput").value;
    document.getElementById("demo").innerHTML = "Enter their names in the boxes below:<br>";
    for (var i = 1; i <= x; i++) {
    var input = document.createElement("input");
        input.type = "text";
        input.name = "text" + i;
        input.id = "jo";
        input.required = true;
        input.placeholder = "Enter Name"
        document.getElementById("demo").appendChild(input).value; 

        }
    }
    function newbox(){
        var box = document.createElement("input");
        var input = document.createElement("input");
        input.type = "text";
        input.name = "input[]";
        input.id = "jo";
        input.required = true;
        input.placeholder = "Enter Name"
        document.getElementById("demo").appendChild(input).value;
    }
    function deletebox(){
        var nobox = document.getElementById("demo");
        nobox.removeChild(nobox.lastChild)
    }