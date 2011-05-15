<?php

//Makes sure the user flow is kept in the correct place

session_start();

function getStage() {
    return isset($_SESSION['curStage']) ? $_SESSION['curStage'] : "start";
}

function transitionStage($oldStage, $newStage) {
    if (getStage() == $oldStage) {
        advanceStage($newStage);
    }
    checkStage($newStage);
}

function checkStage($stage) {
    $stageUrl = array(
        "start" => "signin.php",
        "cases" => "cases.php",
        "process" => "process.php",
        "medarb_intro" => "mediator_arbitrator_intro.php",
        "med_statement" => "mediator_statement.php",
        "issues" => "issues.php",
        "issues2" => "issues2.php",
        "offer" => "offer.php"
    );

    $curStage = getStage(); 
    if ($stage != $curStage) {
        header("Location: /" . $stageUrl[$curStage]);
        die();
    }
}

function advanceStage($newStage) {
    $_SESSION['curStage'] = $newStage;
}
