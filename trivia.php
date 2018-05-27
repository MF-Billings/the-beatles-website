<!--Matt Billings 2015 - COSC 2P89 A2 -->
<?php
$page = 'trivia';
require('header.php');
?>

<div id="main">
	<figure class="quote">
		<blockquote>
			"For those of you in the cheap seats I'd like ya to clap your hands to 
			this one; the rest of you can just rattle your jewelry!"
		</blockquote>
		<figcaption>John Lennon</figcaption>
	</figure>
	
	<h2>Test your Beatles knowledge</h2>
	<p>Here are some skill-testing questions to see just how much you really know
	about the Fab Four.
	</p>
	<form method="get" action="trivia_results.php">
		<div class="triviaUserInfo">
			<label>Enter your name: <input type="text" name="name" value=""/></label>
			<br />
			<label>How would you rate your Beatles trivia knowledge?</label><br />
			<label>Neophyte</label>
			<input type="range" name="beatlesKnowledge" min="0" max="4" step="1" value="2">
			<label>Wise Forest Sage</label>
		</div>
		
		<ol class="trivia">
			<li>
				<label>Where was the group formed?</label><br />
				<input type="radio" name="from" value="Liverpool">Liverpool<br />
				<input type="radio" name="from" value="Merseyside">Merseyside<br />
				<input type="radio" name="from" value="Leeds">Leeds<br />
				<input type="radio" name="from" value="Bangladesh">Bangladesh<br />
			</li>
			<li>
				<label>Match the members to their respective pictures</label><br />
				<div id="mixNmatch">
					<select name="matchA">
						<option>A</option>
						<option>B</option>
						<option>C</option>
						<option>D</option>
					</select>
					<label>John Lennon</label>
					<br />
					<select name="matchB">
						<option>A</option>
						<option>B</option>
						<option>C</option>
						<option>D</option>
					</select>
					<label>Paul McCartney</label>
					<br />
					<select name="matchC">
						<option>A</option>
						<option>B</option>
						<option>C</option>
						<option>D</option>
					</select>
					<label>George Harrison</label>
					<br />
					<select name="matchD">
						<option>A</option>
						<option>B</option>
						<option>C</option>
						<option>D</option>
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
				<input type="radio" name="oldest" value="John">John<br />
				<input type="radio" name="oldest" value="Paul">Paul<br />
				<input type="radio" name="oldest" value="George">George<br />
				<input type="radio" name="oldest" value="Ringo">Ringo<br />
			</li>
			<li>
				<label>When did The Beatles hold their last public performance?</label><br />
				<input type="radio" name="lastPerformance" value="1965">1965<br />
				<input type="radio" name="lastPerformance" value="1967">1967<br />
				<input type="radio" name="lastPerformance" value="1968">1968<br />
				<input type="radio" name="lastPerformance" value="1969">1969<br />
			</li>
			<li>
				<label>Which of these albums were released before 1965?</label><br />
				<input type="checkbox" name="cds[]" value="Please Please Me">Please Please Me<br />
				<input type="checkbox" name="cds[]" value="Help!">Help!<br />
				<input type="checkbox" name="cds[]" value="Yellow Submarine">Yellow Submarine<br />
				<input type="checkbox" name="cds[]" value="Beatles for Sale">Beatles for Sale<br />
			</li>
			<li>
				<label>How many No.1 singles did The Beatles achieve in the US?</label><br />
				<input type="radio" name="no1Singles" value="23">23<br />
				<input type="radio" name="no1Singles" value="17">17<br />
				<input type="radio" name="no1Singles" value="27">27<br />
			</li>
			<li>
				<label>Who was the bands first drummer?</label><br />
				<input type="radio" name="firstDrummer" value="Tommy">Tommy Moore<br />
				<input type="radio" name="firstDrummer" value="Pete">Pete Best<br />
				<input type="radio" name="firstDrummer" value="Ringo">Ringo Starr<br />
				<input type="radio" name="firstDrummer" value="Stu" >Stu Sutcliffe<br />
			</li>
			<li>
				<label>The song "Got to Get You Into My Life" was written by Paul McCartney about what?</label><br />
				<input type="radio" name="GGMyLife" value="Marijuana">Marijuana<br />
				<input type="radio" name="GGMyLife" value="Wife">His future wife, Linda<br />
				<input type="radio" name="GGMyLife" value="OldLove">His highschool girlfriend<br />
				<input type="radio" name="GGMyLife" value="LSD">LSD<br />
				<input type="radio" name="GGMyLife" value="Bass">His bass guitar<br />
			</li>
		</ol>
		<input type="submit" />
	</form>
</div>

<?php require('footer.php') ?>