<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/access.inc.php';
if (!userIsLoggedIn()) {
    include 'login.html.php';
    exit();
}

if (isset($_SESSION['role'])) {
    switch ($_SESSION['role']) {
        case 'spc':
            header('Location: admin/');
            break;

        case 'ict':
            header('Location: admin/');
            break;

        case 'deskoffice':
            header('Location: deskoffice/');
            break;

        default:
            header('Location: headoffice/');
            break;
    }
}

include 'logout.inc.html.php';