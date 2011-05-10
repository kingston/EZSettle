<?php

function adminer_object() {

    class AdminerSoftware extends Adminer {

        function name() {
            // custom name in title and heading
            return 'EZSettle Results';
        }

        function permanentLogin() {
            // key used for permanent login
            return "yY0sCaMxe9Ivxk2ZWUHcZhDs00aWEnG9GuEyRMdCf";
        }

        function credentials() {
            // server, username and password for connecting to database
            return array('localhost', '', '');
        }

        function database() {
            // database name, will be escaped by Adminer
            return '../db/ezsettle.db';
        }

        function login($login, $password) {
            // validate user submitted credentials
            return ($login == 'admin' && sha1(sha1($password)) == 'dd0d6d260fe53026b096d72cc8e3c20444bdc1b5');
        }

        function loginForm() {
?>
<table cellspacing="0">
<tr><th><?php echo lang('Username'); ?><td><input type="hidden" name="driver" value="sqlite"><input type="hidden" name="server" value=""><input id="username" name="username" value="<?php echo h($_GET["username"]);  ?>">
<tr><th><?php echo lang('Password'); ?><td><input type="password" name="password">
</table>
            <script type="text/javascript">
            document.getElementById('username').focus();
            </script>
<?php
            echo "<p><input type='submit' value='" . lang('Login') . "'>\n";
            echo checkbox("permanent", 1, $_COOKIE["adminer_permanent"], lang('Permanent login')) . "\n";
        }
    }

    return new AdminerSoftware;
}

include "./editor.inc.php";

