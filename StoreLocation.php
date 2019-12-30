<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> page title here </title>
    <meta charset="utf-8" />
	
<style>
table{
	width: 20%;
	border-collapse: collapse;

}

table, td, th{
	border: 1px solid black;
	padding: 3px;
}

th {text-align: left;}


</style>
</head>
<body>

<h2> Store Information </h2>
<?php
	$dbServername = "";
	
	$conninfo = array( "Database"=>"Learning and Testing", "UID"=>"Admin", "PWD"=>"Password");
	$conn = sqlsrv_connect( $dbServername, $conninfo);
	if ( $conn ){
		echo "<h2> Connection Established </h2>";
	}
	else{
		echo "Connection could not be established.<br />";
		die ( print_r( sqlsrv_errors(), true));
	}
	
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
		echo "<table>
		<tr>
		<th>Store ID</th>
		<th>Store Phone</th>
		<th>Store Email</th>
		</tr>";
		while($row = sqlsrv_fetch_array ($stmt) )
		{
			echo "<tr>";
			echo "<td>" . $row['store_id'] . "</td>";
			echo "<td>" . $row['Store_phone'] . "</td>";
			echo "<td>" . $row['store_email'] . "</td>";
			echo "</tr>";
		}
		echo "</table";
	}
	else
	{
		echo "0 results";
	}
	
		sqlsrv_close( $conn );

?>

<form>
	<button type="submit"  name="GoBack" formaction="TestingAndLearning.html">Go Back To Main Page</button>
</form>

</body>
</html>