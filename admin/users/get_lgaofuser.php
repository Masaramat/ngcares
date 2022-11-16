<?php
include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

if (isset($_POST['user_role'])) {
	echo "<option value=''>Select One</option>";

	if ($_POST['user_role'] == 'deskoffice') {
		echo "<option value=''>Select One</option>";
		$lgas = array(
			'Barkin Ladi', 'Bassa', 'Bokkos', 'Jos East', 'Jos North', 'Jos South',
			'Kanam', 'Kanke', 'Langtang North', 'Langtang South', 'Mangu', 'Mikang', 'Pankshin',
			'Quaan Pan', 'Riyom', 'Shendam', 'Wase'
		);
		for ($i = 0; $i < sizeof($lgas); $i++) {

			echo "<option value='" . $lgas[$i] . "'>" . $lgas[$i] . "</option>";
		}
	} else if ($_POST['user_role'] == '') {
		echo "<option value=''>Select One</option>";
	} else {
		echo "<option value=''>Select One</option>";
		echo "<option value='headoffice'>Head Office</option>";
	}
}



?>