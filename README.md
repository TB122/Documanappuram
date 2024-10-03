// PROFILE PORTFOLIO

<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA=Compatible" content="TE=edge">
	<title>Profile</title>
	<style>
		body{
			font-family: Arial, sans-serif;
		}
		nav{
			display: flex;
			justify-content: space-between;
			align-items: center;
			background-color: #f8f9fa;
			padding: 10px 20px;
		}
		.profileIcon{
			font-weight: bold;
			font-size: 1.5em;
		}
		nav ul{
			list-style: none;
			display: flex;
			gap: 20px;
			margin: 0;
			padding:0;
		}
		nav ul li{
			display: inline;
		}
		nav button{
			background-color: #007bff;
			color: white:
			border: none;
			padding: 10px 20px;
			border-radius: 20px;			
			cursor: pointer;
		}
		nav button:hover{
			background-color: #0056b3;
		}	
		.container{
			text-align: center;
			margin-top: 50px;
		}
		.container button{
			background-color: #007bff;
			color: white:
			border: none;
			padding: 10px 20px;
			border-radius: 20px;			
			cursor: pointer;
		}
		.container button:hover{
			background-color: #0056b3;
		}
		.profileContainer{
			display: flex;
			align-items: center;
			justify-content: center;
			gap: 20px;
			margin-top: 50px;
		}
		.profileContainer img{
			border-radius: 10px;
		}
		.container1{
			display: flex;
			justify-content: row;
			gap: 20px;
		}
	</style>

</head>
<body>

<nav>
	<div class="profileIcon">JACK</div>
	<ul>
		<li>Home</li>
		<li>About</li>
		<li>Service</li>
		<li>Portfolio</li>
		<li>Contact</li>
	</ul>
	<button> Hire Me </button>
</nav>

<div class="container1">
	<div class="container">
	<h1> Hi I'm Jack</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eisumod tempor incididunt ut labore et dolore magna aliqua.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
	<button>Download CV </button>
	</div>
<div class="profileContainer">
	<img src="profilepicture.jfif" alt="profileimage" height="300" width="260">
</div>
</div>

</body>
</html>
