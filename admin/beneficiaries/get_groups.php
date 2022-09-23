<?php
if (isset($_POST['fca_id'])){
	include $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/db.inc.php';
	echo "<option value=''>Select Group</option>";
	//build the list of groups
	
	$sql = "SELECT * FROM groups WHERE fca_id = ".$_POST['fca_id'];
	$result = mysqli_query($link, $sql);
	if (!$result){
		$error = 'Error fetching list of groups: '.mysqli_error($link);
		include '../error.html.php';
		exit();
	}
	while ($row = mysqli_fetch_assoc($result)){	
			
		$groups[] = array('id' => $row['id'], 'fcaid' => $row['fca_id'] ,'groupname' => $row['group_name']);
		
		echo "<option value='".$row['id']."'>".$row['group_name']."</option>";
	}	
}



?>