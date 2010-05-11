<?

require_once(dirname(__FILE__) . '/../config.php');

class Db {

	public $db_handle;

	public function __construct($db_path=0) {
    	global $SERVER_SETTINGS;
		if(!$db_path) $db_path = $SERVER_SETTINGS["DATABASE_PATH"];
    	if(!$this->db_handle = new SQLiteDatabase($db_path, 0666, $err)) {
      		echo "Error connecting to database";
      		die($err);
    	}
	}
	
	public function query($query) {
		$query = sqlite_escape_string($query);
		$result = $this->db_handle->query($query);
		return $result;
	}

}
?>