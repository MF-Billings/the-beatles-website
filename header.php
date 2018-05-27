<html lang="en-US">
	<head>
		<meta charset="UTF-8" />
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<title>
			The Beatles
		</title>
	</head>
	<body class="body">
		<div id="wrapper">
			<img id="banner" src="images/logo.png" alt="A logo for The Beatles" />
			<nav>
				<ul>
					<li class="nav-orange <?php echo ($page == 'default'? 'current' : '') ?>">
						<a href="default.php">Beatles 101</a>
					</li>
					<li class="nav-yellow <?php echo ($page == 'biography'? 'current' : '') ?>">
						<a href="biography.php" class="nav-yellow">Biography</a>
					</li>
					<li class="nav-green <?php echo ($page == 'members'? 'current' : '') ?>">
						<a href="members.php" class="nav-green">Members</a>
					</li>
					<li class="nav-blue <?php echo ($page == 'discography'? 'current' : '') ?>">
						<a href="discography.php" class="nav-blue">Discography</a>
					</li>
					<li class="nav-purple <?php echo ($page == 'gallery'? 'current' : '') ?>">
						<a href="gallery.php" class="nav-purple">Gallery</a>
					</li>
					<li class="nav-red <?php echo ($page == 'trivia'? 'current' : '') ?>">
						<a href="trivia.php" class="nav-red">Trivia</a>
					</li>
				</ul>
			</nav>