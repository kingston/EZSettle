<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

//write offer to db
try {
	$db = new PDO("sqlite:../db/ezsettle.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
      echo $e->getMessage();
    }


    $sql1 = "UPDATE users SET return_laptop =".$_POST['issue_rank0']." WHERE user_id =".$_SESSION['experimental_id'].""; 
	$sql2 = "UPDATE users SET pay_back_computer =".$_POST['issue_rank1']." WHERE user_id =".$_SESSION['experimental_id'].""; 
	$sql3 = "UPDATE users SET pay_original_ship =".$_POST['issue_rank2']." WHERE user_id =".$_SESSION['experimental_id'].""; 
	$sql4 = "UPDATE users SET pay_cost_rental =".$_POST['issue_rank3']." WHERE user_id =".$_SESSION['experimental_id'].""; 
	$sql5 = "UPDATE users SET pay_emo_damage =".$_POST['issue_rank4']." WHERE user_id =".$_SESSION['experimental_id'].""; 
	$sql6 = "UPDATE users SET pay_return_ship =".$_POST['issue_rank5']." WHERE user_id =".$_SESSION['experimental_id']."";  
    try {
    	$count = $db->exec($sql1);
    	$count = $db->exec($sql2);
    } catch(PDOException $e){
      echo $e->getMessage();
    }


$_SESSION['issues_rank'] = array(
							$_POST['issue_rank0'],
							$_POST['issue_rank1'],
							$_POST['issue_rank2'],
							$_POST['issue_rank3'],
							$_POST['issue_rank4'],
							$_POST['issue_rank5'],
							);
														    
echo json_encode($result);

?>