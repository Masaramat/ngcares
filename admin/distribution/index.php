<?php

include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/access.inc.php';

if (!userIsLoggedIn()) {
	header('Location: ..');
	exit();
}


if (isset($_GET['add'])) {
	$pagetitle = 'New Distribution';
	$action = 'addform';

	$lga = $_SESSION['location'];
	$fcaid = '';
	$groupid = '';
	$itemid = '';
	$quantity = '';
	$spid = '';
	$ddate = '';
	$username = $_SESSION['email'];

	$id = '';
	$button = 'Save';

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	// Build the list of fcas
	$sql = "SELECT * FROM fca_view WHERE lga_name = '$lga'";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of FCAs.' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$fcas[] = array('id' => $row['id'], 'fcaname' => $row['fca_name']);
	}

	// Build the list of service providers
	$sql = "SELECT * FROM service_provider ";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of service provider.' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$sps[] = array('id' => $row['id'], 'sp' => $row['supplier_name']);
	}


	//build the list of means of identification
	$sql = "SELECT * FROM item";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching items:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$items[] = array('id' => $row['id'], 'itemdesc' => $row['item_desc'], 'unit' => $row['unit']);
	}

	include 'form.html.php';
	exit();
}



if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$groupid = mysqli_real_escape_string($link, $_POST['group']);
	$itemid = mysqli_real_escape_string($link, $_POST['item']);
	$quantity = mysqli_real_escape_string($link, $_POST['quantity']);
	$spid = mysqli_real_escape_string($link, $_POST['sp']);
	$ddate = mysqli_real_escape_string($link, $_POST['ddate']);
	$username = mysqli_real_escape_string($link, $_SESSION['email']);


	if ($groupid == '') {
		$error = 'You must choose a group for this distribution.
		Click &lsquo;back&rsquo; and try again.';
		include '../../error.html.php';
		exit();
	}
	if ($itemid == '') {
		$error = 'You must choose an item for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}
	if ($spid == '') {
		$error = 'You must choose a service provider for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}

	$sql = "INSERT INTO item_distribution SET
	group_id='$groupid',
	item_id='$itemid',
	quantity='$quantity',
	date='$ddate',
	sp_id='$spid',
	username='$username' ";

	if (!mysqli_query($link, $sql)) {
		$error = mysqli_error($link);
		$error = 'Error saving distribution.';
		include '../error.html.php';
		exit();
	}
	$distributionid = mysqli_insert_id($link);

	header('Location: .');
	exit();
}



if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT * FROM item_distribution_view WHERE id='$id'";

	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching distributions.';
		include '../error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit distribution data';
	$action = 'editform';

	$groupid = $row['group_id'];
	$itemid = $row['item_id'];
	$spid = $row['sp_id'];
	$quantity = $row['quantity'];
	$ddate = $row['date'];
	$username = $row['username'];

	$button = 'Update Beneficiary';

	$sql = "SELECT * FROM fca_view WHERE lga_name = '$lga'";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of FCAs.' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$fcas[] = array('id' => $row['id'], 'fcaname' => $row['fca_name']);
	}

	// Build the list of service providers
	$sql = "SELECT * FROM service_provider ";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of service provider.' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$sps[] = array('id' => $row['id'], 'sp' => $row['supplier_name']);
	}


	//build the list of means of identification
	$sql = "SELECT * FROM item";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching items:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$items[] = array('id' => $row['id'], 'itemdesc' => $row['item_desc'], 'unit' => $row['unit']);
	}

	// Build the list of groups
	$sql = "SELECT * FROM groups WHERE fca_id = " . $fcaid;
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of groups: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_assoc($result)) {
		$groups[] = array('id' => $row['id'], 'fcaid' => $row['fca_id'], 'groupname' => $row['group_name']);
	}



	include 'form.html.php';
	exit();
}





if (isset($_GET['editform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$lgaid = mysqli_real_escape_string($link, $_POST['lga']);
	$fcaid = mysqli_real_escape_string($link, $_POST['fca']);
	$groupid = mysqli_real_escape_string($link, $_POST['group']);
	$beneficiary = mysqli_real_escape_string($link, $_POST['beneficiary']);
	$moiid = mysqli_real_escape_string($link, $_POST['moi']);
	$idno = mysqli_real_escape_string($link, $_POST['idno']);
	$age = mysqli_real_escape_string($link, $_POST['age']);
	$genderx = mysqli_real_escape_string($link, $_POST['gender']);
	$vulstatus = mysqli_real_escape_string($link, $_POST['vulstatus']);
	$phone = mysqli_real_escape_string($link, $_POST['phone']);
	$address = mysqli_real_escape_string($link, $_POST['address']);
	$farmlocation = mysqli_real_escape_string($link, $_POST['farmlocation']);
	$longitude = mysqli_real_escape_string($link, $_POST['longitude']);
	$latitude = mysqli_real_escape_string($link, $_POST['latitude']);


	if ($groupid == '') {
		$error = 'You must choose a group for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}
	if ($moiid == '') {
		$error = 'You must choose a Means of ID for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}
	if ($idno == '') {
		$error = 'You must enter an ID Number for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}
	if ($genderx == '') {
		$error = 'You must choose a genger for this beneficiary.
		Click &lsquo;back&rsquo; and try again.';
		include 'error.html.php';
		exit();
	}

	$sql = "UPDATE beneficiary SET
	group_id='$groupid',
	beneficiary_name='$beneficiary',
	moi_id='$moiid',
	id_no='$idno',
	age='$age',
	gender='$genderx',
	vul_status='$vulstatus',
	phone='$phone',
	contact_address='$address',
	farm_location='$farmlocation',
	longitude='$longitude',		
	latitude='$latitude' 
	WHERE id='$id'";

	if (!mysqli_query($link, $sql)) {
		$error = 'Error updating Beneficiary Biodata.';
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


// The basic SELECT statement
$select = 'SELECT * FROM item_distribution_view';


$result = mysqli_query($link, $select);
if (!$result) {
	$error = 'Error fetching items: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$distributions[] = array(
		'id' => $row['id'],  'itemdesc' => $row['item_desc'], 'unit' => $row['unit'], 'quantity' => $row['quantity'],
		'username' => $row['username'], 'date' => $row['date'], 'verify date' => $row['verified_date'],
		'lganame' => $row['lga_name'], 'fcaname' => $row['fca_name'], 'groupname' => $row['group_name']
	);
}
include 'itemdistribution.html.php';
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