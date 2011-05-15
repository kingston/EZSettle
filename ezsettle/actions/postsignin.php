<?
require_once(dirname(__FILE__) . '/../utils.php');
//check username and password
session_start();

$errors = "";

if (isset($_SESSION['experimental_id'])) {
    $errors .= "You are already logged in. Please log out before logging back in<br />";
}
else {
    $username = 'Buyer128';
    $experimental_id = postVar('password');
    $condition = 1;

    if($experimental_id == "ezsettle") {
        $_SESSION['admin'] = true;
    }
    else {
        $condition = $experimental_id%10; //conditions 1-6
    }


    //Do some error checking
    if (postVar('username') != "Buyer128"
        || !is_numeric($condition)
        || $condition < 1 || 6 < $condition) {
            $errors .= "Invalid username or password<br />";
        }

    if ($errors === "") {
        $result = array('success' => true);
        //connect to db
        try {
            $db = new PDO("sqlite:../db/ezsettle.db" );
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo "PDO connection object created";
        } catch(PDOException $e){
            echo $e->getMessage();
        }


        $now = date('Y-m-d H:i:s',time());
        //$sql = "INSERT INTO users (user_id, condition, login_time)".
        //	" VALUES (".$experimental_id.", ".$condition.",".$now.")";
        $sql = "INSERT INTO users (user_id, condition, login_time) VALUES (".$experimental_id.", ".$condition.", '".$now."')";

        try {
            $count = $db->exec($sql);

            //Log the user in
            $_SESSION['username'] = $username;
            $_SESSION['experimental_id'] = $experimental_id;
            $_SESSION['condition'] = $condition;
            require("../stage.inc.php");
            advanceStage("cases");
            
        } catch(PDOException $e){
            $errors .= "The system encountered an error processing your request: Please contact an administrator for assistance."; //$e->getMessage();
        }
    }
}

if ($errors === "") {
    $result = array('success' => true);
} else {
    $result = array('success' => false, 'errors' => $errors);
}

echo json_encode($result);

?>
