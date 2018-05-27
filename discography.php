<!--Matt Billings 2015 - COSC 2P89 A2 -->
<?php
    require_once("lib/includes/setup.php");
    $page = 'discography';
    include('header.php');

    if (isset($_POST["queryFilter"])) {
        if (!isset($_COOKIE["queryFilter"]) || $_POST["queryFilter"] != $_COOKIE["queryFilter"]) {
            setcookie("queryFilter", $_POST["queryFilter"]);
        }
    }

?>
		
<div id="main" class="content">
<figure class="quote">
	<blockquote cite="http://www.famousquotefrom.com/paul-mccartney">
	"The Beatles were always a great band. Nothing more, nothing less."
	</blockquote>
	<figcaption>Paul McCartney</figcaption>
</figure>

<form id="music_filter" action="discography.php" method="post">
    <div id="Filter">
    	<span>Display:
    		<input type="radio" name="queryFilter" value="Albums" 
            <?php                             
                if (isset($_POST["queryFilter"])) {
                    if ($_POST["queryFilter"] == "Albums") {
                        echo "checked='checked'";
                    }
                }
                else if (isset($_COOKIE["queryFilter"])) {
                    if ($_COOKIE["queryFilter"] == "Albums") {
                        echo "checked='checked'";
                    }
                }
                else {
                    echo "checked='checked'";
                }
            ?>
            >Albums

    		<input type="radio" name="queryFilter" value="Songs"
            <?php
                if (isset($_POST["queryFilter"])) {
                    if ($_POST["queryFilter"] == "Songs") {
                        echo "checked='checked'";
                    }
                }
                else if (isset($_COOKIE["queryFilter"]) && $_COOKIE["queryFilter"] == "Songs") {
                    echo "checked='checked'";
                }
            ?>
            >Songs
    	</span>
        <input type="submit" value="Search">
    </div>
</form>

<h1>Discography</h1>
<?php
    if (isset($_POST["queryFilter"]) && $_POST["queryFilter"] == "Albums") {
        include('DiscographyView.php');
    } else {
        include('SongListView.php');
    }
?>

<h1>Other Releases</h1>
<p>As arguably the most successful band of the 20th century, the full discography of <em>The Beatles</em> is too large to list here. 
If you are interested in learning more about their various LPs, singles, or other releases, consider checking out their full 
discography <a href="https://en.wikipedia.org/wiki/The_Beatles_discography">here</a>.</p>

</div>

<?php require('footer.php') ?>
        