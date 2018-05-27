<?php
/* All database access using PDO should be done through this class */
class DatabaseAdapterPDO implements IDatabaseAdapter
{
	private $pdo;
	private $lastStatement;

	public function __construct($values)
	{
		$this->setConnectionInfo($values);
	}

	public function setConnectionInfo($dictionary = array())
	{
		if (!is_array($dictionary)) {
			throw new Exception("Incorrect variable type: " . gettype($dictionary));
		}

		$keys = array(
			"DSN" => "dsn",
			"username" => "username",
			"password" => "password",
		);

		$connectionValues["dsn"] = (array_key_exists($keys["DSN"], $dictionary)) ? $dictionary[$keys["DSN"]] : DBCONNECTION;
		$connectionValues["username"] = (array_key_exists($keys["username"], $dictionary)) ? $dictionary[$keys["username"]] : DBUSER;
		$connectionValues["password"] = (array_key_exists($keys["password"], $dictionary)) ? $dictionary[$keys["password"]] : DBPASS;

		$pdo = new PDO($connectionValues["dsn"] , $connectionValues["username"], $connectionValues["password"]);	
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$this->pdo = $pdo;
	}

	public function closeConnection()
	{
		$this->pdo = null;
	}
	
	/**
     * Executes an SQL query and returns the PDO statement object
	 */
	public function query($sql)
	{
		$this->lastStatement = $this->pdo->query($sql);
		return $this->lastStatement;
	}

	public function getRowsAffectedCount()
	{
		return $this->lastStatement->rowCount();
	}

	public function fetchAll($sql)
	{
		$statement = $this->query($sql);
		return $statement->fetchAll(PDO::FETCH_ASSOC);
	}

	/**
	 * Return an array containing the column names
	 */
	public function getColumnNames($sql = "")
	{
		if (empty($sql))
			$sql = "SELECT * FROM " . $table . " LIMIT 0";
		$result = $this->pdo->query($sql);

		$columns = array();
		for ($i = 0; $i < $result->columnCount(); $i++) {
			// Not all PDO drivers support PDOStatement::getColumnMeta()
			$columns[] = $result->getColumnMeta($i)["name"];
		}
    	return $columns;
	}
}