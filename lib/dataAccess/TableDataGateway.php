<?php
/* provides CRUD access to tables and views */
abstract class TableDataGateway {
	
	protected $db;

	/*
		Give gateway access to the means of communicating with the database with dependency injection
	*/
	public function __construct($dbAdapter) 
	{
		if (is_null($dbAdapter)) 
		{
			throw new Exception("Database adapter is null");
		}
		$this->db = $dbAdapter;
	}

	// DEPRECATED
	protected function getSelectStatement() 
	{
		return "SELECT * FROM " . $this->getTableName();
	}

	/**
  	 *	The name of the table in the database
 	 */    
 	abstract protected function getTableName();

 	/**
 	 *	Class that models a row for this table
 	 */
	abstract protected function getDomainObjectClassName();

	protected function getPrimaryKey() 
	{
		return "id";
	}

	// maybe delete - it grabs the id which I'll rarely if ever want
	public function findAll() 
	{
		$result = $this->db->fetchAll($this->getSelectStatement());
		return $this->convertRecordsToObjects($result);
	}

	protected function convertRecordToObject($result) 
	{
		$className = $this->getDomainObjectClassName();
		return new $className($result, false);
	}
	/*
		Converts an array of database records into objects of the appropriate concrete subclass
	*/
	protected function convertRecordsToObjects($results) 
	{
		$className = $this->getDomainObjectClassName();
		$rows = array();
		foreach ($results as $row)
		{
			$instance = new $className($row, false);
			$rows[] = $instance;
		}
		return $rows;
	}
}