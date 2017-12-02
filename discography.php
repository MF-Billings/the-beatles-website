<!--Matt Billings 2015 - COSC 2P89 A5 -->
<!doctype html>
<?php
    require_once("myFunctions.php");
    if (isset($_POST["queryFilter"])) {
        if (!isset($_COOKIE["queryFilter"]) || $_POST["queryFilter"] != $_COOKIE["queryFilter"]) {
            setcookie("queryFilter", $_POST["queryFilter"]);
        }
    }
?>
<html lang="en-US">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<title>
			The Beatles
		</title>
	</head>
	<body>
		<div id="wrapper">
			<img id="banner" src="images/logo.png" alt="A logo for The Beatles" width="900" />
			
			<nav>
				<ul>
					<li><a href="default.html">Beatles 101</a></li>
					<li><a href="biography.html">Biography</a></li>
					<li><a href="members.html">Members</a></li>
					<li class="current"><a href="discography.php">Discography</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="trivia.html">Trivia</a></li>
				</ul>
			</nav>
			
			<div id="main">
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
				require_once("config.php");
				require_once("TableRows.class.php");
				echo "<table style='border: solid 1px black;'>";

				try {
					$conn = new PDO("mysql:host=".DBHOST.";dbname=".DBNAME, DBUSER, DBPASS);
					$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					// echo "Connected successfully";
                    $query = "";
                    # remember user's previous selection. Cookie value may be outdated so use post/get if it exists
                    if ((isset($_POST["queryFilter"]) && $_POST["queryFilter"] == "Songs") || (!isset($_POST["queryFilter"]) 
                    && isset($_COOKIE["queryFilter"]) && $_COOKIE["queryFilter"] == "Songs")) {
                        $query = "SELECT songs.title AS 'Song',
                        albums.title AS 'Album', 
                        GROUP_CONCAT(songwriters.name ORDER BY songwriters.name ASC SEPARATOR ', ') AS 'Songwriter(s)',
                        songs.lyrics AS 'Lyrics'
                        FROM songs 
                        INNER JOIN tracks ON tracks.song_id = songs.id
                        INNER JOIN albums ON albums.id = tracks.album_id
                        LEFT JOIN songwriters_song ON songwriters_song.song_id = songs.id 
                        LEFT JOIN songwriters ON songwriters.id = songwriters_song.songwriter_id
                        GROUP BY songs.title";
                    }
                    else {
                        $query = "SELECT albums.title AS 'Album', albums.year AS 'Released', albums.image FROM albums WHERE albums.is_core_catalogue = 1";
                    }
                    
                    $statement = $conn->prepare($query);
					$statement->execute();
					$statement->setFetchMode(PDO::FETCH_ASSOC);
                    $result = $statement->fetchAll();

                    $columnNames = getColumnNames($statement);
                    
                    foreach ($columnNames as $column) {
                        $alias = "";
                        switch ($column) {
                        case "image":
                            $alias = "Album Cover";
                            break;
                        case "id":
                            break;
                        default:
                            $alias = $column;
                        }
                        if ($alias != "") {
                            echo "<th>" . $alias . "</th>";
                        }
                    }
                    
                    // display link to other page for lyrics if any exist
                    foreach ($result as $row) {
                        echo "<tr>";
                        foreach ($row as $key=>$value) {
                            if ($key == "image") {
                                echo "<td style='border:1px solid black;'><img src='" . $value . "'></td>";
                            }
                            else if ($key == "Lyrics") {
                                if ($value == "") {
                                    echo "<td style='border:1px solid black;'></td>";
                                }
                                else {
                                    echo "<td style='border:1px solid black;'>
                                    <form action='lyrics.php' method='post'>
                                        <input type='hidden' name='song' value='" . htmlentities($row['Song'], ENT_QUOTES) . "'>
                                        <input type='hidden' name='lyrics' value='" . htmlentities(nl2br($value), ENT_QUOTES) . "'>
                                        <input type='submit' value='Click here'>
                                    </form>
                                    </td>";
                                }
                            }
                            else {
                                echo "<td style='border:1px solid black;'>" . $value . "</td>";
                            }
                        }
                        echo "</tr>\n";
                    }
				}
				catch (PDOException $e) {
					echo "Error: " . $e->getMessage();
				}
                $conn = null;   // explicitly close connection
                echo "</table>"
				?>
				<h1>Other Releases</h1>
				<p>As arguably the most successful band of the 20th century, the full discography of <em>The Beatles</em> is too large to list here. 
				If you are interested in learning more about their various LPs, singles, or other releases, consider checking out their full 
				discography <a href="https://en.wikipedia.org/wiki/The_Beatles_discography">here</a>.</p>
				
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
