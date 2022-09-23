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
	$pagetitle = 'New User';
	$action = 'addform';
	$fullname = '';
	$username = '';
	$email = '';
	$password = '';
	$role = '';
	$lga_of_user = '';
	$gender = '';

	$id = '';
	$button = 'Add User';


	include 'form.html.php';
	exit();
}


// the following code adds a new User to the database
if (isset($_GET['addform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$fullname = mysqli_real_escape_string($link, $_POST['fullname']);
	$username = mysqli_real_escape_string($link, $_POST['username']);
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$password = mysqli_real_escape_string($link, $_POST['password']);
	$role = mysqli_real_escape_string($link, $_POST['role']);
	$lga_of_user = mysqli_real_escape_string($link, $_POST['lgaofuser']);
	$gender = mysqli_real_escape_string($link, $_POST['gender']);

	$sql = "INSERT INTO application_user SET
	full_name='$fullname',
	username='$username',
	email='$email',
	password ='$password',
	lga='$lga_of_user',
	gender='$gender',
	role='$role',
	status='active' ";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error adding submitted User.';
		include '../error.html.php';
		exit();
	}

	$Userid = mysqli_insert_id($link);
	if ($_POST['password'] != '') {
		$password = md5($_POST['password'] . 'ijdb');
		$password = mysqli_real_escape_string($link, $password);
		$sql = "UPDATE application_user SET
		password = '$password'
		WHERE id = '$Userid'";
		if (!mysqli_query($link, $sql)) {
			$error = 'Error setting User password.';
			include '../error.html.php';
			exit();
		}
	}

	header('Location: .');
	exit();
}


if (isset($_POST['action']) and $_POST['action'] == 'Edit') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$id = mysqli_real_escape_string($link, $_POST['id']);
	$sql = "SELECT * FROM application_user WHERE id='$id'";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching User details.';
		include 'error.html.php';
		exit();
	}
	$row = mysqli_fetch_array($result);
	$pagetitle = 'Edit User';
	$action = 'editform';


	$fullname = $row['full_name'];
	$username =  $row['username'];
	$email = $row['email'];
	//$password =$row['password'];
	$role = $row['role'];
	$lga_of_user = $row['lga'];

	$button = 'Update User';



	include 'form.html.php';
	exit();
}


//code to update the User
if (isset($_GET['editform'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$id = mysqli_real_escape_string($link, $_POST['id']);
	$gender = mysqli_real_escape_string($link, $_POST['gender']);
	$password = md5($_POST['password'] . 'ijdb');
	$password = mysqli_real_escape_string($link, $password);
	$fullname = mysqli_real_escape_string($link, $_POST['fullname']);
	$username = mysqli_real_escape_string($link, $_POST['username']);
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$role = mysqli_real_escape_string($link, $_POST['role']);
	$lga_of_user = mysqli_real_escape_string($link, $_POST['lgaofuser']);
	$gender = mysqli_real_escape_string($link, $_POST['gender']);

	$sql = "UPDATE application_user SET
	full_name='$fullname',
	username='$username',
	email='$email',
	password = '$password',
	lga='$lga_of_user',
	gender='$gender',
	role='$role',
	status='active'
	WHERE id='$id' ";
	if (!mysqli_query($link, $sql)) {
		$error = 'Error adupdatingding submitted User.';
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



include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
// The basic SELECT statement
$select = 'SELECT * FROM application_user';

$result = mysqli_query($link, $select);
if (!$result) {
	$error = 'Error fetching beneficiaries: ' . mysqli_error($link);
	include '../error.html.php';
	exit();
}
while ($row = mysqli_fetch_array($result)) {
	$users[] = array(
		'id' => $row['id'],  'fullname' => $row['full_name'],
		'username' => $row['username'], 'email' => $row['email'], 'gender' => $row['gender'],
		'role' => $row['role'], 'location' => $row['lga'], 'status' => $row['status']
	);
}

include 'users.html.php';
exit();