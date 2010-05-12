<?

function htmlEscape($v) {
	return htmlspecialchars($v, ENT_QUOTES);
}

function postVar($fieldName) {
	return isset($_POST[$fieldName])? $_POST[$fieldName] : "";
}

function postVarClean($fieldName) {
	return htmlEscape(postVar($fieldName));
}

function getVar($fieldName) {
	return isset($_GET[$fieldName])? $_GET[$fieldName] : "";
}

function getVarClean($fieldName) {
	return htmlEscape(getVar($fieldName));
}

function sessionVar($fieldName) {
	return isset($_SESSION[$fieldName])? $_SESSION[$fieldName] : "";
}

?>