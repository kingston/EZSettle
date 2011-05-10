<?php

function adminer_object() {

    class AdminerSoftware extends Adminer {

        function name() {
            // custom name in title and heading
            return 'EZSettle Results View';
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
            return ($login == 'admin' && sha1(sha1($password)) == 'dd0d6d260fe53026b096d72cc8e3c20444bdc1b5dd0d6d260fe53026b096d72cc8e3c20444bdc1b5');
        }
    }

    return new AdminerSoftware;
}

include "./editor.php";

