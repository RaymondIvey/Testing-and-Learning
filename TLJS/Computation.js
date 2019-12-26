/*----
	
---*/

function Computation()
{
	var FirstNumber = parseFloat(document.getElementById("FirstNum").value);
	var SecondNumber = parseFloat(document.getElementById("SecondNum").value);
	var Operation = document.getElementById("OperationID").value;
	
	if(Operation == "addition"){
		var Compute = FirstNumber + SecondNumber;
	} else if (Operation == "subtraction"){
		var Compute = FirstNumber - SecondNumber;
	} else if (Operation == "multiplication"){
		var Compute = FirstNumber * SecondNumber;
	} else if (Operation == "division"){
		var Compute = FirstNumber / SecondNumber;
	} else {
		var Compute = FirstNumber % SecondNumber;
	}
	
		
		
	
	document.getElementById("testP").innerHTML = Compute + " Test Success " + Operation;
	
	
}

