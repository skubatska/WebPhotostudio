<!DOCTYPE>

<html>
	<head>
		<?php 
			include "head.php"; 
			include "start.php"; 
		?>
		<?php
			if(isset($_GET['id'])){
			$id=$_GET['id'];}else{$id=1;}
		?>
	
		<title> ϟ Photo Saloon</title>
		<link rel='stylesheet' href='galereya.css'>
		<link rel="stylesheet" href="main.css">
		<link rel="stylesheet" href="media.css">
		<link rel="stylesheet" href="style.css">
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
			
			<div class='container'>
				<div class="menu2">
					<?php
						$q=mysql_query("SELECT id, idf FROM ftname");
						while ($row=mysql_fetch_array($q,MYSQL_ASSOC)){
						echo "<a class='s' href='?id=".$row['id']."'>".$row['idf']."</a>";
						}
					?>
				</div>
				<div class='content'>
					<?php
						$q=mysql_query("SELECT src FROM ftsrc WHERE idf='".$id."'");
						while ($row=mysql_fetch_array($q,MYSQL_ASSOC)){
						echo "<img src='".$row['src']."'><br>";
						}
					?>
			</div>
		</div>
			
		</div>
	</body>
</html>