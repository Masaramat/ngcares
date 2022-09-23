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
	$pagetitle = 'New Beneficiary';
	$action = 'addform';

	$lgaid = '';
	$fcaid = '';
	$groupid = '';
	$beneficiary = '';
	$moiid = '';
	$idno = '';
	$age = '';
	$genderx = '';
	$vulstatus = '';
	$phone = '';
	$address = '';
	$farmlocation = '';
	$longitude = '';
	$latitude = '';

	$id = '';
	$button = 'Add Beneficiary';

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

	//build the list of means of identification
	$sql = "SELECT id, moi_desc, moi_code FROM means_of_id";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of means of identity:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$mois[] = array('id' => $row['id'], 'moidesc' => $row['moi_desc'], 'moicode' => $row['moi_code']);
	}

	//build the list of genders
	$sql = "SELECT id, gen_code, gen_desc FROM gender";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of genders:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$genders[] = array('id' => $row['id'], 'gencode' => $row['gen_code'], 'gendesc' => $row['gen_desc']);
	}

	include 'form.html.php';
	exit();
}



if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
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

	$sql = "INSERT INTO beneficiary SET
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
	latitude='$latitude'";

	if (!mysqli_query($link, $sql)) {
		$error = mysqli_error($link);
		$error = 'Error adding beneficiary.';
		include '../error.html.php';
		exit();
	}
	$beneficiaryid = mysqli_insert_id($link);

	header('Location: .');
	exit();
}



if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT * FROM beneficiary_view WHERE id='$id'";

	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching FCA details.';
		include '../error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit Beneficiary Biodata';
	$action = 'editform';


	$lgaid = $row['lga_id'];
	$fcaid = $row['fca_id'];
	$groupid = $row['group_id'];
	$beneficiary = $row['beneficiary_name'];
	$moiid = $row['moi_id'];
	$idno = $row['id_no'];
	$age = $row['age'];
	$genderx = $row['gender'];
	$vulstatus = $row['vul_status'];
	$phone = $row['phone'];
	$address = $row['contact_address'];
	$farmlocation = $row['farm_location'];
	$longitude = $row['longitude'];
	$latitude = $row['latitude'];

	$button = 'Update Beneficiary';

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

	// Build the list of fcas
	$sql = "SELECT * FROM fca WHERE lga_id = " . $lgaid;
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of FCAs: ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_assoc($result)) {
		$fcas[] = array('id' => $row['id'], 'lgaid' => $row['lga_id'], 'fcaname' => $row['fca_name']);
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

	//build the list of means of identification
	$sql = "SELECT id, moi_desc, moi_code FROM means_of_id";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of means of identity:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$mois[] = array('id' => $row['id'], 'moidesc' => $row['moi_desc'], 'moicode' => $row['moi_code']);
	}

	//build the list of genders
	$sql = "SELECT id, gen_code, gen_desc FROM gender";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of genders:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$genders[] = array('id' => $row['id'], 'gencode' => $row['gen_code'], 'gendesc' => $row['gen_desc']);
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
	include '../../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
}


// The basic SELECT statement
$select = 'SELECT * FROM beneficiary_view';

$result = mysqli_query($link, $select);
if (!$result) {
	$error = 'Error fetching beneficiaries: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$beneficiaries[] = array(
		'id' => $row['id'],  'fcaname' => $row['fca_name'], 'moidesc' => $row['moi_desc'], 'idno' => $row['id_no'],
		'beneficiary' => $row['beneficiary_name'], 'age' => $row['age'], 'gender' => $row['gender'],
		'lganame' => $row['lga_name'], 'enterprise' => $row['enterprise_desc'], 'groupname' => $row['group_name']
	);
}
include 'beneficiaries.html.php';
exit();