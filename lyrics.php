<!--Matt Billings 2015 - COSC 2P89 A2 -->
<?php 

require_once("lib/includes/setup.php");
require('header.php');

$discography = new Discography_model();
$id = (int)$_GET['id'];
$song = $discography->findSong($id);
?>

<div id="main">

	<input type="button" class="normal-margin btnlink" style="display: block;" value="Go back" onclick="window.history.back()">

	<h1 class="songTitle"><?= $song['title'] ?></h1>
	<div>
		<div class="keep-whitespace"><?= $song['lyrics'] ?></div>
	</div>

</div>

<?php require('footer.php') ?>