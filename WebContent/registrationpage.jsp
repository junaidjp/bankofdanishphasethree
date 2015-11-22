<html>
<head>
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
 
<body>
<h3>Welcome to Bank Of Danish</h3>
 
<img src="logo.jpg" alt="" style="width:600px;height:228px;" /><p>

<form action="form.php" method="POST">
 
 
 
<table cellpadding = "10">

<tr>
<td colspan="2" align="center"> REGISTRATION FORM</td>
</tr>
 
 

 
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td>FIRST NAME</td>
<td><input type="text" name="First_Name" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>LAST NAME</td>
<td><input type="text" name="Last_Name" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
  
<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="text" name="Email_Id" maxlength="100" /></td>
</tr>
 
<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="text" name="Mobile_Number" maxlength="10" />
(10 digit number)
</td>
</tr>
 
<!----- Gender ----------------------------------------------------------->
<tr>
<td>GENDER</td>
<td>
Male <input type="radio" name="Gender" value="Male" />
Female <input type="radio" name="Gender" value="Female" />
</td>
</tr>

<!----- Social Security ---------------------------------------------------------->
<tr>
<td>SOCIAL SECURITY</td>
<td>
<input type="text" name="Social_Security" maxlength="10" />
</td>
</tr>
 
<!----- Address ---------------------------------------------------------->
<tr>
<td>ADDRESS LINE 1</td>
<td><input type="text" name="Address_Line_1" maxlength="30" placeholder="Street Name & No."/>
</tr>

<tr>
<td>ADDRESS LINE 2</td>
<td><input type="text" name="Address_Line_2" maxlength="30" placeholder="Apt No."/>
</tr>
 
<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text" name="City" maxlength="30" />
(max 30 characters a-z and A-Z)
</td>
</tr>
 
 
<!----- State ---------------------------------------------------------->
<tr>
<td>STATE</td>
<td><input type="text" name="State" maxlength="30" />
(max 30 characters a-z and A-Z)
</td>
</tr>

<!----- Zip Code ---------------------------------------------------------->
<tr>
<td>ZIP CODE</td>
<td><input type="text" name="Zip_Code" maxlength="6" />
</td>
</tr>
 
<!----- Country ---------------------------------------------------------->
<tr>
<td>COUNTRY</td>
<td><input type="text" name="Country"/></td>
</tr>
 

 

 
<!----- Course ---------------------------------------------------------->
<tr>
<td>ACC APPLIED FOR</td>
<td>
Checking
<input type="radio" name="Checking" value="Checking">
Saving
<input type="radio" name="Saving" value="Saving">
Loan
<input type="radio" name="Loan" value="Loan">

</td>
</tr>
 
<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
 
</form>
 
</body>
</html>