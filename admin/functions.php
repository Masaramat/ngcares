<?php


function getBeneficiariesNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM beneficiary_view');

    return mysqli_num_rows($select);
}
function getUsersNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM application_user');

    return mysqli_num_rows($select);
}

function getFcaNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM fca_view');

    return mysqli_num_rows($select);
}

function getGroupsNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM groups_view');

    return mysqli_num_rows($select);
}

function getServiceProvidersNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM service_provider_view');

    return mysqli_num_rows($select);
}

function getDistributionNO()
{
    include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
    $select = mysqli_query($link, 'SELECT * FROM item_distribution_view');

    return mysqli_num_rows($select);
}