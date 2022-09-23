<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
if (isset($_POST['fca_id'])) {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	echo "<option value=''>Select Group</option>";
	//build the list of groups
	//not working on my device
	$sql = "SELECT * FROM groups WHERE fca_id = " . $_POST['fca_id'];
	$result = mysqli_query($link, $sql);
	echo "<option value=''>Select Group2</option>";
	if ($result) {
	}

	while ($row = mysqli_fetch_assoc($result)) {

		$groups[] = array('id' => $row['id'], 'fcaid' => $row['fca_id'], 'groupname' => $row['group_name']);

		echo "<option value='" . $row['id'] . "'>" . $groups['group_name'] . "</option>";
	}
}