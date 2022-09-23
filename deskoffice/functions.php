<?php


function getBeneficiariesNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $lga = $_SESSION['location'];
    $select = mysqli_query($link, "SELECT * FROM beneficiary_view where lga_name = '$lga'");

    return mysqli_num_rows($select);
}


function getFcaNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $lga = $_SESSION['location'];
    $select = mysqli_query($link, "SELECT * FROM fca_view where lga_name = '$lga'");

    return mysqli_num_rows($select);
}

function getGroupsNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $lga = $_SESSION['location'];
    $select = mysqli_query($link, "SELECT * FROM groups_view where lga_name = '$lga'");

    return mysqli_num_rows($select);
}

function getDistributionNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $lga = $_SESSION['location'];
    $select = mysqli_query($link, "SELECT * FROM item_distribution_view where lga_name = '$lga'");

    return mysqli_num_rows($select);
}