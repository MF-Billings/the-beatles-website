<?php

/*
	An object representing a single row from the database Release view
*/
class Release extends DomainObject {

	public function __construct(array $data, $generateExc) {

	  parent::__construct($data, $generateExc);
	}
	
	static function getFieldNames() {

		return array("id", "Album", "Released", "Cover");
	}
}

?>