<html lang="en-US">
	<head>
		<meta charset="UTF-8" />
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<title>
			The Beatles
		</title>
	</head>
	<body>
		<div id="wrapper">
			<img id="banner" src="images/logo.png" alt="A logo for The Beatles" />
			<nav>
				<ul>
					<li><a href="default.html">Beatles 101</a></li>
					<li><a href="biography.html">Biography</a></li>
					<li><a href="members.html">Members</a></li>
					<li><a href="discography.php">Discography</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="trivia.html">Trivia</a></li>
				</ul>
			</nav>

			<div id="main">
            <input type="button" class="normal-margin btnlink" style="display: block;" value="Go back" onclick="window.history.back()">
            
            <h1 class="songTitle"><?php echo $_POST["song"] . "<br />"; ?></h1>
            <p>
            <?php echo $_POST["lyrics"]; ?>
            </p>
            </div>
            <footer>
				<p>Matt Billings <time datetime="2015">2015</time>
					<br />
					This site was made for educational and demonstration purposes only
				</p>
			</footer>
        </div>
    </body>
</html>
