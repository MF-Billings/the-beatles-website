<!--Matt Billings 2015 - COSC 2P89 A2 -->
<?php

$page = 'trivia';
require_once("myFunctions.php");

?>

<div id="main">
	<figure class="quote">
		<blockquote>
"Count your age by friends, not years. Count your life by smiles, not tears."
		</blockquote>
		<figcaption>John Lennon</figcaption>
	</figure>
	
	<div class="trivia_results">
	</div>

    <h2>
    <?php 
    $maxScore = 8;
    $playerScore = scoreTrivia();
    echo getScoreMessage($playerScore, $maxScore) . "<br />";
    echo getKnowledgeMessage($playerScore/$maxScore, $_GET["beatlesKnowledge"]); 
    ?>
    </h2>
    <a id="backToTrivia" href="trivia.html">Try again</a><br />
	
	<ol class="trivia">
		<li>
			<label>Where was the group formed?</label><br />
			<input type="radio" name="from" value="Liverpool" <?php restoreRadioValue("from", "Liverpool") ?>>Liverpool<br />
			<input type="radio" name="from" value="Merseyside" <?php restoreRadioValue("from", "Merseyside") ?>>Merseyside<br />
			<input type="radio" name="from" value="Leeds" <?php restoreRadioValue("from", "Leeds") ?>>Leeds<br />
			<input type="radio" name="from" value="Bangladesh"<?php restoreRadioValue("from", "Bangladesh") ?>>Bangladesh<br />
		</li>
		<li>
			<label>Match the members to their respective pictures</label><br />
			<div id="mixNmatch">
				<select name="matchA">
					<option <?php restoreSelectValue("A", $_GET["matchA"]) ?>>A</option>
					<option <?php restoreSelectValue("B", $_GET["matchA"]) ?>>B</option>
					<option <?php restoreSelectValue("C", $_GET["matchA"]) ?>>C</option>
					<option <?php restoreSelectValue("D", $_GET["matchA"]) ?>>D</option>
				</select>
				<label>John Lennon</label>
				<br />
				<select name="matchB">
					<option <?php restoreSelectValue("A", $_GET["matchB"]) ?>>A</option>
					<option <?php restoreSelectValue("B", $_GET["matchB"]) ?>>B</option>
					<option <?php restoreSelectValue("C", $_GET["matchB"]) ?>>C</option>
					<option <?php restoreSelectValue("D", $_GET["matchB"]) ?>>D</option>
				</select>
				<label>Paul McCartney</label>
				<br />
				<select name="matchC">
					<option <?php restoreSelectValue("A", $_GET["matchC"]) ?>>A</option>
					<option <?php restoreSelectValue("B", $_GET["matchC"]) ?>>B</option>
					<option <?php restoreSelectValue("C", $_GET["matchC"]) ?>>C</option>
					<option <?php restoreSelectValue("D", $_GET["matchC"]) ?>>D</option>
				</select>
				<label>George Harrison</label>
				<br />
				<select name="matchD">
					<option <?php restoreSelectValue("A", $_GET["matchD"]) ?>>A</option>
					<option <?php restoreSelectValue("B", $_GET["matchD"]) ?>>B</option>
					<option <?php restoreSelectValue("C", $_GET["matchD"]) ?>>C</option>
					<option <?php restoreSelectValue("D", $_GET["matchD"]) ?>>D</option>
				</select>
				<label>Ringo Starr</label>
				<br />
			</div>
			<div id="mixNmatchPic">
				<img src="images/fab4.jpg" alt="The &quot;Fab Four&quot;" />
				<label id="A">A</label>
				<label id="B">B</label>
				<label id="C">C</label>
				<label id="D">D</label>
			</div>
		<li>
			<label>Who was the oldest member of The Beatles?</label><br />
			<input type="radio" name="oldest" value="John" <?php restoreRadioValue("oldest", "John") ?>>John<br />
			<input type="radio" name="oldest" value="Paul" <?php restoreRadioValue("oldest", "Paul") ?>>Paul<br />
			<input type="radio" name="oldest" value="George" <?php restoreRadioValue("oldest", "George") ?>>George<br />
			<input type="radio" name="oldest" value="Ringo" <?php restoreRadioValue("oldest", "Ringo") ?>>Ringo<br />
		</li>
		<li>
			<label>When did The Beatles hold their last public performance?</label><br />
			<input type="radio" name="lastPerformance" value="1965" <?php restoreRadioValue("lastPerformance", "1965") ?>>1965<br />
			<input type="radio" name="lastPerformance" value="1967" <?php restoreRadioValue("lastPerformance", "1967") ?>>1967<br />
			<input type="radio" name="lastPerformance" value="1968" <?php restoreRadioValue("lastPerformance", "1968") ?>>1968<br />
			<input type="radio" name="lastPerformance" value="1969" <?php restoreRadioValue("lastPerformance", "1969") ?>>1969<br />
		</li>
		<li>
			<label>Which of these albums were released before 1965?</label><br />
			<input type="checkbox" name="cds[]" value="Please Please Me" <?php restoreCheckboxValue("cds", "Please Please Me") ?>>Please Please Me<br />
			<input type="checkbox" name="cds[]" value="Help!" <?php restoreCheckboxValue("cds", "Help!") ?>>Help!<br />
			<input type="checkbox" name="cds[]" value="Yellow Submarine" <?php restoreCheckboxValue("cds", "Yellow Submarine") ?>>Yellow Submarine<br />
			<input type="checkbox" name="cds[]" value="Beatles for Sale" <?php restoreCheckboxValue("cds", "Beatles for Sale") ?>>Beatles for Sale<br />
		</li>
		<li>
			<label>How many No.1 singles did The Beatles achieve in the US?</label><br />
			<input type="radio" name="no1Singles" value="23" <?php restoreRadioValue("no1Singles", "23") ?>>23<br />
			<input type="radio" name="no1Singles" value="17" <?php restoreRadioValue("no1Singles", "17") ?>>17<br />
			<input type="radio" name="no1Singles" value="27" <?php restoreRadioValue("no1Singles", "27") ?>>27<br />
		</li>
		<li>
			<label>Who was the bands first drummer?</label><br />
			<input type="radio" name="firstDrummer" value="Tommy" <?php restoreRadioValue("firstDrummer", "Tommy") ?>>Tommy Moore<br />
			<input type="radio" name="firstDrummer" value="Pete" <?php restoreRadioValue("firstDrummer", "Pete") ?>>Pete Best<br />
			<input type="radio" name="firstDrummer" value="Ringo" <?php restoreRadioValue("firstDrummer", "Ringo") ?>>Ringo Starr<br />
			<input type="radio" name="firstDrummer" value="Stu" <?php restoreRadioValue("firstDrummer", "Stu") ?>>Stu Sutcliffe<br />
		</li>
		<li>
			<label>The song "Got to Get You Into My Life" was written by Paul McCartney about what?</label><br />
			<input type="radio" name="GGMyLife" value="Marijuana" <?php restoreRadioValue("GGMyLife", "Marijuana") ?>>Marijuana<br />
			<input type="radio" name="GGMyLife" value="Wife" <?php restoreRadioValue("GGMyLife", "Wife") ?>>His future wife, Linda<br />
			<input type="radio" name="GGMyLife" value="OldLove" <?php restoreRadioValue("GGMyLife", "OldLove") ?>>His highschool girlfriend<br />
			<input type="radio" name="GGMyLife" value="LSD" <?php restoreRadioValue("GGMyLife", "LSD") ?>>LSD<br />
			<input type="radio" name="GGMyLife" value="Bass" <?php restoreRadioValue("GGMyLife", "Bass") ?>>His bass guitar<br />
		</li>
	</ol>
</div>

<?php include('footer.php') ?>
