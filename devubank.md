//BANK First Page

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
.button{
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	margin-right: 20px;
	
}
.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.button1 {background-color: black;} 
</style>
</head>
<body>

<h1 style="color:black;text-align:center;">ABC Bank</h1>


<div class = "center">
	<a href = "pin.html"><button class="button button1" >Insert Card</button></a>
</div>



</body>
</html>

//WITHDRAW

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
.center{
  margin: 30;
  position: absolute;
  top: 30%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  
}
</style>
</head>
<body>

<h1 style="text-align:center;">Withdraw</h1>
<h4 style="text-align:center; font-weight:normal;">Enter the amount you want to <br> withdraw</h4>
<h4 style="text-align:center;font-weight:normal;">Amount</h4>

<div class= center>
<input type = text><br><br><br>
</div>
</body>
</html>

//WELCOME

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
img{
	display: block;
	margin-left: auto;
	margin-right: auto; 
}
h1{
	text-align: center;
}
table, th, td{
	border: 1px solid white;
  	/*border-collapse: collapse;*/
	margin-left: 300px;
	border-spacing: 30px;
	padding: 40px;
}
th, td{
	background-color: darkblue;
	padding: 15px;
}

//PIN NUMBER

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
.button{
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	
	
}
.center {
  margin: 30;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.button1 {background-color: green;} 
.button2 { border-radius: 12px;}
.button3 {background-color: red;}
</style>
</head>
<body>
<div class = center>

<h4 style="color:black;text-align:center; font-weight: normal; margin-top : 50px; ">Enter your Pin number</h4>
<input type = text><br><br><br>
<center><button type = "button" class = "button button1 button2"> Submit </button></center>
<center><button type = "button" class = "button button3 button2"> Reset </button></center><br>

<center><a href = "bank.html"><h3 style="color:black;font-weight: bold; margin-top : 50px; ">Exit</h3></a></center>


</div>




</body>
</html>
