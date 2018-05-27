<?php
require_once(__DIR__.DIRECTORY_SEPARATOR."config.php");

/** part of PHP 5 
 * This eliminates the need to provide include() or require() statements for each of the classes used
 */
spl_autoload_register(function($class) {

	// searches for file in the directories specified within the array ie. dataAccess, model, ...
	$directoriesToSearch = array(
		realpath("./lib").DIRECTORY_SEPARATOR."dataAccess".DIRECTORY_SEPARATOR,
		realpath(".").DIRECTORY_SEPARATOR.'model'.DIRECTORY_SEPARATOR
	);

	$fileFound = false;
	foreach ($directoriesToSearch as $dir) {
		$file = "$dir$class.php";
 
		if (file_exists($file)) {
			include $file;
			$fileFound = true;
			break;
		}
	}

	if (! $fileFound) {
		throw new Exception("Class not found: $class.php");
	}
});

// TODO does this do anything?
$dbAdapter = DatabaseAdapterFactory::create(DB_ADAPTER_TYPE);

// TODO make sure these can be accessed
// Functions //=========================================================================================

if (! function_exists('restoreRadioValue')) {
	function restoreRadioValue($field, $buttonValue) {
	    if (isset($_GET[$field]) && $_GET[$field] == $buttonValue) {
	        echo "checked='checked'"; 
	    }
	}
}

if (! function_exists('restoreSelectValue')) {
	function restoreSelectValue($value, $selectedValue) {
	    if ($value == $selectedValue) {
	        echo "selected='selected'";
	    }
	}
}

if (! function_exists('restoreCheckboxValue')) {
	function restoreCheckboxValue($field, $value) {
	    if (isset($_GET[$field]) && in_array($value, $_GET[$field])) {
	        echo "checked='checked'";
	    }
	}
}

if (! function_exists('scoreTrivia')) {
	function scoreTrivia() {
	    $score = 0;
	    if (isset($_GET["from"]) && $_GET["from"] == "Liverpool") 
	       $score++; 
	    if ($_GET["matchA"] == "A" && $_GET["matchB"] == "B" && $_GET["matchC"] == "C" && $_GET["matchD"] == "D")
	        $score++;
	    if (isset($_GET["oldest"]) && $_GET["oldest"] == "Ringo")
	        $score++;
	    if (isset($_GET["lastPerformance"]) && $_GET["lastPerformance"] == "1969")
	        $score++;
	    if (isset($_GET["cds"]) && in_array("Please Please Me", $_GET["cds"]) && 
	    in_array("Beatles for Sale", $_GET["cds"]) && count($_GET["cds"]) == 2)
	        $score++;
	    if (isset($_GET["no1Singles"]) && $_GET["no1Singles"] == "17")
	        $score++;
	    if (isset($_GET["firstDrummer"]) && $_GET["firstDrummer"] == "Pete")
	        $score++;
	    if (isset($_GET["GGMyLife"]) && $_GET["GGMyLife"] == "Marijuana")
	        $score++;
	   
	    return $score;
	}
}

if (! function_exists('getScoreMessage')) {
	function getScoreMessage($score, $max) {
	    $playerName = "";
	    $scoreMsg = "";
	    if (isset($_GET["name"]))
	        $playerName = $_GET["name"];
	    $percent = $score/$max;
	    if ($percent == 1) {
	        $scoreMsg = "Congratulations $playerName! You got $score out of $max: a perfect score!";
	    }
	    else if ($percent >= .7) {
	        $scoreMsg = "You got $score out of $max. Well done $playerName!"; 
	    }
	    else {
	        $scoreMsg = "You got $score out of $max $playerName";
	    }
	    return $scoreMsg;
	}
}

if (! function_exists('restoreCheckboxValue')) {
	function restoreCheckboxValue($fractionGrade, $knowledgeLevel) {
	    $knowledgeMsg = "";
	    if ($fractionGrade > 0.8) {
	        if ($knowledgeLevel > 2) {
	            $knowledgeMsg = "You really do know your stuff!";
	        }
	        else {
	            $knowledgeMsg = "Are you sure you're not a Beatles expert?!";
	        }
	    }
	    else if ($fractionGrade < 0.4) {
	        if ($knowledgeLevel > 2) {
	            $knowledgeMsg = "Well, this test IS pretty tough.";
	        }
	        else {
	            $knowledgeMsg = "Don't worry, there's always more to learn about The Beatles!";
	        }
	    }
	    return $knowledgeMsg;
	}
}

// TODO not used I don't think
if (! function_exists('getColumnNames')) {
	// TODO maybe delete - think this should be in database adapter class
	function getColumnNames($statement) {
	    $nColumns = $statement->columnCount();
	    $columns = array();
	    for($i = 0; $i < $nColumns; $i++) {
	        $columns[$i] = $statement->getColumnMeta($i)["name"];
	    }
	    return $columns;
	}
}
?>


