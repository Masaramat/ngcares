<?php
if (isset($_POST['dli_id'])){
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	echo "<option value=''>All Enterprises</option>";
	
	//build the list of enterprises   
    $sql = "SELECT id, dli_id, enterprise_desc FROM enterprise WHERE dli_id = ".$_POST['dli_id'];
	$result = mysqli_query($link, $sql);
	if (!$result){
		$error = 'Error fetching list of Enterprises:'.mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_array($result)){
		$enterprises[] = array('id' => $row['id'], 'dliid' => $row['dli_id'] ,'enterprise' => $row['enterprise_desc']);
        echo "<option value='".$row['id']."'>".$row['enterprise_desc']."</option>";
	}
		
}



?>