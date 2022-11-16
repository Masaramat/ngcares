<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/access.inc.php';

if (!userIsLoggedIn()) {
	header('Location: ..');
	exit();
}


if (isset($_GET['add'])) {
	$pagetitle = 'New FCA';
	$action = 'addform';

	$fcaname = '';
	$district = '';
	$fcaleader = '';
	$lgaid = '';
	$phoneline = '';

	$id = '';
	$button = 'Add FCA';

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of LGAs.';
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}

	include 'form.html.php';
	exit();
}



if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$fca = mysqli_real_escape_string($link, $_POST['fca']);
	$lga = mysqli_real_escape_string($link, $_POST['lga']);
	$fcaleader = mysqli_real_escape_string($link, $_POST['fcaleader']);
	$phoneline = mysqli_real_escape_string($link, $_POST['phoneline']);
	if ($lga == '') {
		$error = 'You must choose an LGA for this FCA.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}
	$sql = "INSERT INTO fca SET
	fca_name='$fca',
	fca_leader='$fcaleader',
	fca_leader_phone='$phoneline',	
	lga_id='$lga',
	status = 'pending'";

	if (!mysqli_query($link, $sql)) {
		$error = mysqli_error($link);
		//$error = 'Error adding FCA.';
		include '../error.html.php';
		exit();
	}
	$fcaid = mysqli_insert_id($link);

	header('Location: ./');
	exit();
}



if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT id, fca_name, lga_id, fca_leader, fca_leader_phone FROM fca WHERE id='$id'";

	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching FCA details.';
		include '../error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit FCA';
	$action = 'editform';

	$fcaname = $row['fca_name'];
	$lgaid = $row['lga_id'];
	$fcaleader = $row['fca_leader'];
	$phoneline = $row['fca_leader_phone'];
	$id = $row['id'];

	$button = 'Update FCA';

	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of lgas.';
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}

	include 'form.html.php';
	exit();
}





if (isset($_GET['editform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$id = mysqli_real_escape_string($link, $_POST['id']);
	$fca = mysqli_real_escape_string($link, $_POST['fca']);
	$lga = mysqli_real_escape_string($link, $_POST['lga']);
	$fcaleader = mysqli_real_escape_string($link, $_POST['fcaleader']);
	$phoneline = mysqli_real_escape_string($link, $_POST['phoneline']);

	if ($lga == '') {
		$error = 'You must choose an lga for this FCA.
		Click &lsquo;back&rsquo; and try again.';
		include '../error.html.php';
		exit();
	}

	$sql = "UPDATE fca SET
	fca_name='$fca',
	fca_leader='$fcaleader',
	fca_leader_phone='$phoneline',	
	lga_id='$lga' 
	WHERE id='$id'";

	if (!mysqli_query($link, $sql)) {
		$error = 'Error updating submitted FCA.';
		include '../error.html.php';
		exit();
	}

	header('Location: .');
	exit();
}

if (isset($_POST['action']) and $_POST['action'] == 'Delete') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);

	// Delete the FCA
	$sql = "DELETE FROM fca WHERE id='$id'";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error deleting fca.';
		include '../error.html.php';
		exit();
	}
	header('Location: .');
	exit();
}



include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
// The basic SELECT statement
$select = 'SELECT id, fca_name, lga_id, lga_name, fca_leader, fca_leader_phone FROM fca_view';

$result = mysqli_query($link, $select);
if (!$result) {
	$error = 'Error fetching FCAs: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$fcas[] = array(
		'id' => $row['id'],  'fca' => $row['fca_name'], 'lga_id' => $row['lga_id'],
		'lga_name' => $row['lga_name'], 'leader' => $row['fca_leader'], 'phoneline' => $row['fca_leader_phone']
	);
}
include 'fcas.html.php';
exit();



// Display search form
include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
$result = mysqli_query($link, 'SELECT id, lga_name FROM lga');
if (!$result) {
	$error = 'Error fetching lgas from database!';
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
}