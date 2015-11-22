<html>
<head>
<title>Sign In</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
 
<body >
<h3>Welcome To Bank Of Danish</h3>

<img src="logo.jpg" alt="" style="width:600px;height:228px;" /><p>


	<form action="login" method="POST">

		<table cellpadding="10" background="logo1.jpg">

			<tr>
				<td colspan="2" align="center" font-weight="bold">Sign In</td>
			</tr>

			<!----- User name and password ---------------------------------------------------------->
			<tr>
				<td>
				<input type="text" name="username" value=""
					placeholder="Username"> 
					
					<input type="password"
					name="passcode" value="" placeholder="Password"></td>
			</tr>

			<!----- Submit ---------------------------------------------------------->
			<tr>

				<td><input type="submit" name="commit" value="Sign in"></td>

			</tr>


			<!----- Forgot password ---------------------------------------------------------->
			<tr>

				<td><a href="index.html" style="color: white">Forgot your
						password?</a></td>

			</tr>


			<!----- Submit ---------------------------------------------------------->
			<tr>

				<td>Don't have an account? <a
					href="http://localhost/bankofdanishPhaseOneA/test.html"
					style="color: white">Rgister Now</a></td>

			</tr>



		</table>

	</form>
</body>
</html>