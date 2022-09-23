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


if (isset($_GET['beneficiaries'])) {

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	$dlis = getDlis($link);
	$genders = getGenders($link);

	$select = 'SELECT id, beneficiary_name, age, gender, group_name, enterprise_desc, fca_name, lga_name FROM beneficiary_view';

	$result = mysqli_query($link, $select);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$beneficiaries[] = array(
			'id' => $row['id'],  'fcaname' => $row['fca_name'], 'age' => $row['age'], 'gender' => $row['gender'],
			'beneficiary' => $row['beneficiary_name'], 'lganame' => $row['lga_name'], 'groupname' => $row['group_name'], 'enterprise' => $row['enterprise_desc']
		);
	}
	include 'benreport.html.php';
}


if (isset($_GET['action']) and $_GET['action'] == 'searchbeneficiary') {
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	$dlis = getDlis($link);
	$genders = getGenders($link);

	// The basic SELECT statement
	$select = 'SELECT id, beneficiary_name, age, gender, group_name, enterprise_desc, fca_name, lga_name';
	$from = ' FROM beneficiary_view';
	$where = ' WHERE TRUE';


	$lgaid = mysqli_real_escape_string($link, $_GET['lga']);
	if ($lgaid != '') { // An LGA is selected	
		$where .= " AND lga_id='$lgaid'";
	}

	$dliid = mysqli_real_escape_string($link, $_GET['dli']);
	if ($dliid != '') { // A DLI is selected	
		$where .= " AND dli_id='$dliid'";
	}

	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id='$enterpriseid'";
	}

	$genderid = mysqli_real_escape_string($link, $_GET['gender']);
	if ($genderid != '') { // A gender is selected	
		$where .= " AND gender='$genderid'";
	}

	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$beneficiaries[] = array(
			'id' => $row['id'],  'fcaname' => $row['fca_name'], 'age' => $row['age'], 'gender' => $row['gender'],
			'beneficiary' => $row['beneficiary_name'], 'lganame' => $row['lga_name'], 'groupname' => $row['group_name'], 'enterprise' => $row['enterprise_desc']
		);
	}
	include 'benreport.html.php';
	exit();
}

//function to get search parameters form beneficiaries report

function getLgas($link)
{
	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of LGAs.';
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}
	return $lgas;
}

function getDlis($link)
{
	// Build the list of dli
	$sql = "SELECT id, dli_code, dli_name FROM dli";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of DLIs.';
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$dlis[] = array('id' => $row['id'], 'dlicode' => $row['dli_code'], 'dliname' => $row['dli_name']);
	}

	return $dlis;
}


function getGenders($link)
{
	//build the list of genders
	$sql = "SELECT id, gen_code, gen_desc FROM gender";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of genders:' . mysqli_error($link);
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$genders[] = array('id' => $row['id'], 'gencode' => $row['gen_code'], 'gendesc' => $row['gen_desc']);
	}

	return $genders;
}



if (isset($_GET['inputs'])) {

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$inputs = array();
	$enterprises = getEnterprise();
	$lgas = getLgas($link);

	$select = 'SELECT * ';
	$from = ' FROM agric_inputs_progress_report';

	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}

	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['no_of_bfs'], 'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'],
			'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}


	include 'inputsreport.html.php';
	exit();
}

function getEnterprise()
{
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
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
	return $enterprises;
}


if (isset($_GET['action']) and $_GET['action'] == 'searchinput') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM agric_inputs_progress_report';
	$where = ' WHERE TRUE';


	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['no_of_bfs'], 'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'],
			'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	$enterprises = getEnterprise();
	include 'inputsreport.html.php';
	exit();
}


if (isset($_GET['individual_assets'])) {
	$inputs = array();


	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$lgas = getLgas($link);


	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}
	$select = 'SELECT * ';
	$from = ' FROM individual_assets_progress_report';

	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'], 'number' => $row['no_of_bfs'],
			'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'], 'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	include 'individualassetsreport.html.php';
	exit();
}


if (isset($_GET['action']) and $_GET['action'] == 'searchindassets') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM individual_assets_progress_report';
	$where = ' WHERE TRUE';


	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id ='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'], 'number' => $row['no_of_bfs'],
			'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'], 'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}
	include 'individualassetsreport.html.php';
	exit();
}


if (isset($_GET['group_assets'])) {

	$inputs = array();

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM group_assets_progress_report';


	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'], 'number' => $row['no_of_bfs'],
			'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'], 'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(7,8,9,10)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}


	include 'groupassetreport.html.php';
	exit();
}


if (isset($_GET['action']) and $_GET['action'] == 'searchgroupassets') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM group_assets_progress_report';
	$where = ' WHERE TRUE';


	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id ='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'], 'number' => $row['no_of_bfs'],
			'item' => $row['item_desc'], 'quantity' => $row['qty_per_bf'], 'qtyappr' => $row['qty_aprvd'], 'unit' => $row['unit'],
			'qtydstr' => $row['qty_dstr'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(7,8,9,10)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}
	include 'groupassetreport.html.php';
	exit();
}


if (isset($_GET['lgainputs'])) {

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';

	$inputs = array();
	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where dli_id = 1";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}

	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of LGAs.';
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}

	$select = 'SELECT * ';
	$from = ' FROM lgawise_inputs_progress_report';


	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}


	include 'lgainputsreport.html.php';
	exit();
}


if (isset($_GET['action']) and $_GET['action'] == 'searchlgainput') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM lgawise_inputs_progress_report';
	$where = ' WHERE TRUE';

	$lgaid = mysqli_real_escape_string($link, $_GET['lga']);
	if ($lgaid != '') { // An enterprise is selected	
		$where .= " AND lga_id='$lgaid'";
	}

	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching Groups. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

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
	include 'lgainputsreport.html.php';
	exit();
}



if (isset($_GET['lgaindividual_assets'])) {
	$inputs = array();

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';


	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}

	// Build the list of lgas
	$lgas = getLgas($link);

	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM lgawise_individualasset_progress_report';



	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	include 'lgaindividualassetreport.html.php';
	exit();
}


if (isset($_GET['action']) and $_GET['action'] == 'searchlgaindassets') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM lgawise_individualasset_progress_report';
	$where = ' WHERE TRUE';

	$lgaid = mysqli_real_escape_string($link, $_GET['lga']);
	if ($lgaid != '') { // An enterprise is selected	
		$where .= " AND lga_id ='$lgaid'";
	}

	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id ='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}

	// Build the list of lgas
	$sql = "SELECT id, lga_name FROM lga";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of LGAs.';
		include '../../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$lgas[] = array('id' => $row['id'], 'name' => $row['lga_name']);
	}



	include 'lgaindividualassetreport.html.php';
	exit();
}


if (isset($_GET['lgagroup_assets'])) {
	$inputs = array();

	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);


	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}


	$select = 'SELECT * ';
	$from = ' FROM lgawise_groupasset_progress_report';



	$result = mysqli_query($link, $select . $from);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	include 'lgagroupassetreport.html.php';
	exit();
}


if (isset($_GET['action']) and $_GET['action'] == 'searchlgagroupassets') {
	$inputs = array();
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	$lgas = getLgas($link);
	// The basic SELECT statement
	$select = 'SELECT * ';
	$from = ' FROM lgawise_groupasset_progress_report';
	$where = ' WHERE TRUE';

	$lgaid = mysqli_real_escape_string($link, $_GET['lga']);
	if ($lgaid != '') { // An enterprise is selected	
		$where .= " AND lga_id ='$lgaid'";
	}

	$enterpriseid = mysqli_real_escape_string($link, $_GET['enterprise']);
	if ($enterpriseid != '') { // An enterprise is selected	
		$where .= " AND enterprise_id ='$enterpriseid'";
	}


	$result = mysqli_query($link, $select . $from . $where);
	if (!$result) {
		$error = 'Error fetching individual assets. ' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$inputs[] = array(
			'enterpriseid' => $row['enterprise_id'],  'enterprise' => $row['enterprise_desc'],
			'number' => $row['beneficiaries'], 'item' => $row['item_desc'], 'quantity' => $row['quantity'],
			'qtyappr' => $row['qty_approved'], 'unit' => $row['unit'], 'lgaid' => $row['lga_id'], 'lganame' => $row['lga_name'],
			'qtydstr' => $row['qty_procured'], 'attrition' => $row['attrition'], 'percentage' => $row['percentage']
		);
	}

	//build the list of enterprises
	$sql = "SELECT id, dli_id, enterprise_desc FROM enterprise where id in(5,6)";
	$result = mysqli_query($link, $sql);
	if (!$result) {
		$error = 'Error fetching list of Enterprises:' . mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)) {
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'], 'enterprise' => $row['enterprise_desc']);
	}





	include 'lgagroupassetreport.html.php';
	exit();
}


include 'searchform.html.php';