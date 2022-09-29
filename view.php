<?php
 	include("dbconnect.php");
	extract($_POST);
	session_start();
	$loc=$_SESSION['loc'];
	$mname=$_SESSION['mname'];
	?>
		
		
<html>
<title> medical</title>
<style>
p
{
	color:#009999;
	text-align: center;
	text-transform: uppercase;
	 font-size:20px;
	 
}

ul {
  list-style-type: none;
  margin: 0;
  padding:30px;
  overflow: hidden;
  background-color: #009999;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
   border-radius:0px;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #ff0055;
}

.active {
  background-color: #ff0055;
}

#footer {
  padding: 35px;
  background: #009999;
  background-repeat: no-repeat;
  background-size: 1420px  100px;
  border-radius:0px;
  text-align:center;
  text-decoration:blink;
   font-family: Arial;
   font-size:15px;
}
#bg1 {

  padding:180px;
  background:url("images/2.jpg");
  background-repeat: no-repeat;
  background-size: 1420px  300px;
  border-radius:5px;
   border-radius:0px;
   font-size:35px;
}

</style>
</head>

<p>Diseases Reporting System </p>

<ul>
	 <li><a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></li>
	  <li><a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></li>
  <li><a class="active" href="mhome.php">Diseases Report</a></li>
  <li><a href="#">&nbsp;</a></li>
  <li><a href="view.php">View Reports</a></li>
    <li><a href="#">&nbsp;</a></li>
  <li><a href="index.php">Logout</a></li>
 </ul>
<div id="bg1">   </div>

	


<table width="106%" align="center">

	<tr>
		<td colspan="10" align="center"><h2>Diseases Details</h2></td>
		</tr>
	<tr>
		<td colspan="10">&nbsp;</td>
		</tr>
	
		    <tr>
          <td width="1%">&nbsp;</td>
          <td width="7%"><div align="center" class="style6"><strong>Disease Name</strong> </div></td>
		   <td width="11%"><div align="center" class="style6"><strong>Affected Person</strong> </div></td>
		    <td width="11%"><div align="center" class="style6"><strong>Orgin Place</strong> </div></td>
			 <td width="9%"><div align="center" class="style6"><strong>Symptoms</strong> </div></td>
		    <td width="11%"><div align="center" class="style6"><strong>Report</strong> </div></td>
			<td width="10%"><div align="center" class="style6"><strong>Updated Analysys</strong> </div></td>
			 
        </tr>
		<tr>
		<td colspan="10">&nbsp;</td>
		</tr>
		<?php
		$qry=mysql_query("select * from diseases where mcenter='$mname'");
		$i=1;
		while($row=mysql_fetch_array($qry))
		{
		?>

        <tr>
		 <td width="1%">&nbsp;</td>
		     <td><div align="center"><?php echo $row['name'];?></div></td>
			  <td><div align="center"><?php echo $row['person'];?></div></td>
			 <td><div align="center"><?php echo $row['orgin'];?></div></td>
			  <td><div align="center"><?php echo $row['symptoms'];?></div></td>
				 <td><div align="center"><a href="download.php?fname=<?php echo $row['fname'];?>">Download Report</a></div></td>
				 	   <td><div align="center"><?php echo $row['status'];?></div></td>
	
			  <td width="2%">&nbsp;</td>
		 
        </tr>
		
		
		 <tr>
		  	 	<td>&nbsp;</td>
		   		<td>&nbsp;</td>
				<td>&nbsp;</td>
			 	<td>&nbsp;</td>
			 	<td>&nbsp;</td>
			 	<td>&nbsp;</td>
				<td>&nbsp;</td>
		
		
		</tr>
		
        <?php
		$i++;
		}
		
		?>
				<tr>
		<td colspan="10" align="center">&nbsp;</td>
		</tr>
		
		</table>
		







<br>
<br>
<br>
<br>
<br>
<div id="footer"> Copyrights & designedby@Goverment</div>