<?php

class ReleasesViewGateway extends TableDataGateway {

	public function __construct($dbAdapter) {
		parent::__construct($dbAdapter);
	}
	
	/*
		Get name of the class that models the data source
 	*/
	protected function getDomainObjectClassName() {
		return "Release";
	}
	
	/*
		Get name of the table that the domain object class models
	*/
	protected function getTableName() {
		return "releases";
	}

	function getPrimaryKey() {
		return "id";
	}
}

?>