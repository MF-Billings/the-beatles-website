<?php
/* 
	Abstract common behaviour into interface by applying the adapter pattern
	Only contains logic necessary for intended purpose and should not be considered a general adapter as is
*/
interface IDatabaseAdapter {
	
	function setConnectionInfo($dictionary=array());
	function closeConnection();

	function query($sql);
	function getRowsAffectedCount();
}