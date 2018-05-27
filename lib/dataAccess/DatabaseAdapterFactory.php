<?php
/* 
Responsible for instantiating the appropriate data adapter. This removes the explicit dependency on a specific concrete subclass of IDatabaseAdapter (in this case, DatabaseAdapterPDO).  This way, if an adapter is changed in the future one won't need to change every instantiation to the appropriate concrete adapter.
*/

class DatabaseAdapterFactory {

	public static function create($type, $connectionValues=array()) {
		$adapter = "DatabaseAdapter" . $type;
		if (class_exists($adapter)) {
			return new $adapter($connectionValues);
		}
		else {
			throw new Exception("Specified adapter: " . $adapter . " does not exist");
		}
	}
}