<?php

include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/access.inc.php';

if (!userIsLoggedIn()) {
	header('Location: ..');
	exit();
}


if (isset($_GET['add'])) {
	$pagetitle = 'New Farmers\' Group';
	$action = 'addform';

	$lgaid = '';
	$fcaid = '';
	$groupname = '';
	$enterpriseid = '';

	$id = '';
	$button = 'Add Group';

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of LGAs: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}

	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}


	include 'form.html.php';
	exit();
}

if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$group = mysqli_real_escape_string($link, $_POST['group']);
	$fcaid = mysqli_real_escape_string($link, $_POST['fca']);
	$enterpriseid = mysqli_real_escape_string($link, $_POST['enterprise']);

	if ($fcaid == '') {
		$error = 'You must choose an FCA for this Group.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}

	if ($enterpriseid == '') {
		$error = 'You must choose an Enterprise for this Group.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}


	$sql = "INSERT INTO groups SET
	group_name = '$group',
	fca_id = '$fcaid',
	enterprise_id = '$enterpriseid'";

	echo $sql;


	if (!mysqli_query($link, $sql)) {
		$error = mysqli_error($link);
		//$error = 'Error adding Group.';
		include '../error.html.php';
		exit();
	}
	$groupid = mysqli_insert_id($link);

	header('Location: .');
	exit();
}



if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT id, group_name, fca_id, enterprise_id, lga_id FROM groups_view  WHERE id='$id'";

	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching Group details: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit Group';
	$action = 'editform';

	$lgaid = $row['lga_id'];
	$groupname = $row['group_name'];
	$fcaid = $row['fca_id'];
	$enterpriseid = $row['enterprise_id'];
	$id = $row['id'];

	$button = 'Update Group';

	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of lgas.';
		include '. ./error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}

	//build the list of fca
	$sql = "SELECT id, lga_id, fca_name FROM fca";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$fcas[] = array('id' => $row['id'], 'lgaid' => $row['lga_id'], 'fcaname' => $row['fca_name']);
	}


	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}

	include 'form.html.php';
	exit();
}



if (isset($_GET['editform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$id = mysqli_real_escape_string($link, $_POST['id']);
	$fca = mysqli_real_escape_string($link, $_POST['fca']);
	$groupname = mysqli_real_escape_string($link, $_POST['group']);
	$enterprise = mysqli_real_escape_string($link, $_POST['enterprise']);


	if ($fca == '') {
		$error = 'You must choose an fca for this Group.
		Click &lsquo;back&rsquo; and try again.';
		include '../error.html.php';
		exit();
	}

	if ($enterprise == '') {
		$error = 'You must choose an Enterprise for this Group.
		Click &lsquo;back&rsquo; and try again.';
		include '../error.html.php';
		exit();
	}

	$sql = "UPDATE groups SET
	fca_id='$fca',
	group_name='$groupname',
	enterprise_id='$enterprise' 
	WHERE id='$id'";

	if (!mysqli_query($link, $sql)) {
		$error = 'Error updating submitted Group: ' . mysqli_error($link);
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
		include 'error.html.php';
		exit();
	}
	header('Location: .');
	exit();
}

// Display search form
include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
$result = mysqli_query($link, 'SELECT id, lga_name FROM lga');
if (!$result) {
	$error = 'Error fetching lgas from database!: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
}


// The basic SELECT statement
$select = 'SELECT id, group_name, enterprise_desc, fca_name, lga_id, lga_name FROM groups_view';
$where = ' WHERE TRUE';


$lgaid = mysqli_real_escape_string($link, $_SESSION['location']);
if ($lgaid != '') { // An LGA is selected	
	$where .= " AND lga_name='$lgaid'";
}

$result = mysqli_query($link, $select . $where);
if (!$result) {
	$error = 'Error fetching Groups. ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$groups[] = array(
		'id' => $row['id'],  'fcaname' => $row['fca_name'], 'lgaid' => $row['lga_id'],
		'lganame' => $row['lga_name'], 'groupname' => $row['group_name'], 'enterprise' => $row['enterprise_desc']
	);
}
include 'groups.html.php';
exit();