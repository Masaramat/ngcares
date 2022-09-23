<?php
if (isset($_POST['lga_id'])){
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	echo "<option value=''>Select FCA</option>";
	//build the list of fcas
	
	$sql = "SELECT * FROM fca WHERE lga_id = ".$_POST['lga_id'];
	$result = mysqli_query($link, $sql);
	if (!$result){
		$error = 'Error fetching list of FCAs: '.mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($fcas = mysqli_fetch_assoc($result)){	
			
		$fcas[] = array('id' => $fcas['id'], 'lgaid' => $fcas['lga_id'] ,'fcaname' => $fcas['fca_name']);
		
		echo "<option value='".$fcas['id']."'>".$fcas['fca_name']."</option>";
	}	
}



?>