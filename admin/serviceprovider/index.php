<?php

include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/access.inc.php';

if (!userIsLoggedIn()) {
	header('Location: ..');
	exit();
}

// the following code loads the form for adding new users
include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/magicquotes.inc.php';
include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

if (isset($_GET['add'])) {
	$pagetitle = 'New Service Provider';
	$action = 'addform';

	$suppliername = '';
	$email = '';
	$phone = '';
	$itemid = '';
	$supplierstatus = '';

	$id = '';
	$button = 'Add Service Provider';

	//build the list of items
	$sql = "SELECT * FROM item ORDER BY 2";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Items:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$items[] = array('id' => $row['id'], 'itemdesc' => $row['item_desc']);
	}


	include 'form.html.php';
	exit();
}


// the following code adds a new User to the database
if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$suppliername = mysqli_real_escape_string($link, $_POST['suppliername']);
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$phone = mysqli_real_escape_string($link, $_POST['phone']);
	$itemid = mysqli_real_escape_string($link, $_POST['item']);
	$supplierstatus = mysqli_real_escape_string($link, $_POST['status']);


	$sql = "INSERT INTO service_provider SET
	supplier_name='$suppliername',
	phone='$phone',
	email='$email',
	item_id ='$itemid',
	supplier_status='active' ";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error adding  service provider.' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}

	$spid = mysqli_insert_id($link);

	header('Location: .');
	exit();
}


if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT * FROM service_provider WHERE id='$id'";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching service provider details.';
		include 'error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit Service Provider';
	$action = 'editform';


	$suppliername = $row['supplier_name'];
	$phone =  $row['phone'];
	$email = $row['email'];
	$itemid = $row['item_id'];
	$supplierstatus = $row['supplier_status'];

	$button = 'Edit User';

	//build the list of items
	$sql = "SELECT * FROM item ";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of items:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$items[] = array('id' => $row['id'], 'itemdesc' => $row['item_desc']);
	}




	include 'form.html.php';
	exit();
}


//code to update the User
if (isset($_GET['editform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$suppliername = mysqli_real_escape_string($link, $_POST['suppliername']);
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$phone = mysqli_real_escape_string($link, $_POST['phone']);
	$itemid = mysqli_real_escape_string($link, $_POST['item']);
	$supplierstatus = mysqli_real_escape_string($link, $_POST['status']);


	$sql = "UPDATE service_provider SET
	supplier_name='$suppliername',
	phone='$phone',
	email='$email',
	item_id ='$itemid',
	supplier_status = '$supplierstatus'  
	WHERE id='$id' ";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error updating service provider.' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}


	header('Location: .');
	exit();
}


//the following if stamement handles the deleting of an user from the database
if (isset($_POST['action']) and $_POST['action'] == 'Delete') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);

	// Delete the User
	$sql = "DELETE FROM User WHERE id='$id'";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error deleting User.';
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
	$error = 'Error fetching lgas from database!';
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
}


// The basic SELECT statement
$select = 'SELECT * FROM service_provider_view';



$result = mysqli_query($link, $select);
if (!$result) {
	$error = 'Error fetching service providers: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$suppliers[] = array(
		'id' => $row['id'],  'suppliername' => $row['supplier_name'],
		'phone' => $row['phone'], 'email' => $row['email'], 'itemid' => $row['item_id'],
		'itemdesc' => $row['item_desc'], 'status' => $row['supplier_status']
	);
}

include 'suppliers.html.php';
exit();