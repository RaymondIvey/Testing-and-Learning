/*----
	
---*/

function Computation()
{
	var FirstNumber = parseInt(document.getElementById("FirstNum").value);
	var SecondNumber = parseInt(document.getElementById("SecondNum").value);
	var Operation = document.getElementById("Operation").value;
	
	
	
	var Compute = FirstNumber + SecondNumber;
	
	document.getElementById("testP").innerHTML = Compute + " Test Success" + Operation;
	
	
}

