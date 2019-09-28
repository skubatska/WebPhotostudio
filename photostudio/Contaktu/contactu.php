<!DOCTYPE>
<?php
	$link = mysqli_connect('localhost', 'root', '', 'reviews');
	error_reporting(0);
?>

<?php
	$errcode=0;

	$name=mysqli_real_escape_string($link, $_GET['name']);
	$email=mysqli_real_escape_string($link, $_GET['email']);
	$message=mysqli_real_escape_string($link, $_GET['message']);

	if($name){
		$errcode=1;
		$query_string="INSERT INTO Reviews(name, email, message) VALUES ('$name', ";
		if($email) $query_string.="'$email', ";
		else $query_string.="NULL, ";
		if($message) $query_string.="'$message')";
			else $query_string.="NULL)";
		if(!mysqli_query($link,$query_string)){
			$errcode=2;
		}
	}
?>
<html>
	<head>
		<title>ϟ Photo Saloon</title>
		<link rel='stylesheet' href='contactu.css'>
		<link rel="stylesheet" href="main.css">
		<link rel="stylesheet" href="media.css">
	</head>
	<body>
		<div class = "all">
			<div class = "header">
				<p class='logo'>Photo Saloon</p>
				<p class='logo2'>Мистецтво зупиняє час...</p>
				<div class = "menu">
					<ul id="nav">
						<div id = 'burger'>
							<div></div>
							<div></div>
							<div></div>
						</div>
						<li><a href='../Golovna/golovna.php'>Головна</a></li>
						<li><a href='../Poslugu/poslugu.php'>Послуги</a></li>
						<li><a href='../Galereya/galereya.php'>Галерея</a></li>
						<li><a href='../Contaktu/contactu.php'>Контакти</a></li>
					</ul>
				</div>
			</div>
			<div class = "contactUs">
				<div class = 'photo'>
					<img src="casaBatllo2.jpg" alt="photo" class='image'>
				</div>
				<div class = 'infa'>
					<p class = 'z'>Зв'яжіться з нами<br><br></p>
					<p class = 'd'>Давайте поговоримо!<br>+38 099 628 35 08</p>
				</div>
			</div>
			<div class = "message">
				<form action="" method="GET">
					<p>Ваше ім'я:</p>
					<input name="name" type="text" id='input'><br>
					<p>Ваш email:</p>
					<input name="email" type="text" id='input'><br>
					<p>Ваше повідомлення:</p>
					<input name="message" type="text" id='input2'><br>
					<input type="submit" value="Відправити" id = 'send'>
				</form>
				<?php
					switch($errcode){
					case 0:break;
					case 1:
					{
				?>
				<div class="message success">
					<p>Ваше повідомлення відправлено</p>
				</div>
				<?php
					break;
					}
					case 2:
					default:
					{
				?>
				<div class="message error">
					<p>Невідома помилка</p>
				</div>	
				<?php
					}
					}
				?>
			</div>
			
			<div class = 'bottom'>
			</div>
		</div>
	</body>
</html>