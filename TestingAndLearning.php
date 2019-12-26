<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title> page title here </title>
    <meta charset="utf-8" />
<!--
    by:	Raymond Ivey
    last modified:	4/21/2018
	
	11/25 Update 1.01:
		add selector for Addition/Subtraction/Multiplication/Division/Modulo
		Update JS file to include if/else for these cases
		look into cleaning up JS file afterwards
		
	11/26 Update 1.02:
		Changed number selectors to allow for input instead of up/down buttons
			Preparing this for purchasing later where the customer can add how many of an item they want
		Allowed for Decimal calculations in prepartion for dealing with dollar and cent amounts
		Changed JSfile Computation.js parseInt to parseFloat
		Make sure parseInt is used for purchasing to ensure that only whole numbers are allowed.
			Possibly look into only allowing one number to be entered into the field.
		Added menu buttons for navigating the shop page
			Look into adding a large drop down menu similar to gamestop main page
			
			
	12/4 Update 1.03:
		Added search bar and button (currently does nothing)
		Added card button
		
	Future Plans/Goals
		Connect to shop inventory database
		Allow searching of shop inventory
		Add cart to save items customer wishes to purchase
		Add calculations for pre tax price, tax, and total price
		
-->




    <link href="E:/328/normalize.css"
          type="text/css" rel="stylesheet" />
		  
	<script src="Computation.js" type="text/javascript" defer="defer"> </script>
	
	<script type="text/javascript">
		
		window.onload = function()
		{
			var ComputeVar = document.getElementById("Compute");
			
			ComputeVar.onclick = Computation;
		}
	</script>	
	
	
</head>

<body>

<?php
	$dbServername = "sensored for privacy, database server name goes here"
	
	$conninfo = array( "Database"=>"Learning and Testing", "UID"=>"Admin", "PWD"=>"Password");
	$conn = sqlsrv_connect( $dbServername, $conninfo);
	if ( $conn ){
		echo "<h2> Connection Established </h2>";
	}
	else{
		echo "Connection could not be established.<br />";
		die ( print_r( sqlsrv_errors(), true));
	}

?>
	
	<h2> Ray Ivey --- Testing/Learning HTML/PHP/CSS/JS </h2>
		
		<input type="button" value="SearchButton" id="SearchButton" />
		<input type="text" name="Searchbar" id="Searchbar" />
		<input type="button" value="Cart" id="Cart" />
	<hr />

	<form>
		<input type="button" value="Board Games" name="BoardGame" />
		<input type="button" value="Cards and Other Games" name="CardGames" />
		<input type="button" value="Acessories" name="Acessories" />
		<input type="button" value="Game Room" name="GameRoom" />
		<input type="button" value="Location" name="Location" />
	</form>
    <hr />
	
	<form>
		<label for="FirstNum"> First Number </label>
		<input type="text" name="FirstNum" id="FirstNum"/>
		<hr />
		<label for="SecondNum"> Second Number </label>
		<input type="text" name="SecondNum" id="SecondNum"/>
		<hr />
		<label> Select Mathematical Operation </label>
		<select id="OperationID" name="OperationID">
			<option value="addition"> + </option>
			<option value="subtraction"> - </option>
			<option value="multiplication"> * </option>
			<option value="division"> / </option>
			<option value="modulo"> % </option>
		</select>
		<input type="button" value="Compute" name="Compute" id="Compute" onclick="Computation()" />
	</form>
	
<?php
	$sql = "SELECT * FROM Store";
	$params = array();
	$stmt = sqlsrv_query( $conn, $sql, $params);
	
	if(!$stmt)
	{
		echo "Query Issue.<br />";
		die ( print_r( sqlsrv_errors(), true));
	}
	
	if ($stmt !== false)
	{
		while($row = sqlsrv_fetch_array ($stmt) )
		{
			echo "Store Id: " . $row["store_id"]. " Store Phone: " . $row["Store_phone"]. " Store Email: " . $row["store_email"]. "<br>";
		}
	}
	else
	{
		echo "0 results";
	}
	
		sqlsrv_close( $conn );
?>
	
	<p id="testP"> Result goes here </p>

	
    <p>
        Validate by pasting .xhtml copy's URL into<br /> 
        <a href="https://html5.validator.nu/">
            https://html5.validator.nu/ 
        </a>
    </p>

    <p>
        <a href=
           "http://jigsaw.w3.org/css-validator/check/referer?profile=css3">
            <img src="http://jigsaw.w3.org/css-validator/images/vcss"
                 alt="Valid CSS3!" height="31" width="88" />
        </a>
    </p>

</body>
</html>