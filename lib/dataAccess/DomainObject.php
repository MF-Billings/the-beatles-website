<?php

/*
	Contains common functionality for classes that are used to wrap row details
 */
abstract class DomainObject {

	protected $fieldValues = array(); 
 	protected $generateException = true;

	public function __construct(array $data, $generateExc=false) {
		// should we generate exception if there is reference to unknown field
    $this->generateException = $generateExc;

		foreach ($data as $key => $value) {
			$this->$key = $value;
		}
	}

	protected function doesFieldExist($name) {
		
		$className = get_class($this);
		return in_array($name, $className::getFieldNames());
	}
}