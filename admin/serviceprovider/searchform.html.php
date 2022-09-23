<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Manage Service Provider</title>
<meta http-equiv="content-type"
content="text/html; charset=utf-8"/>
</head>
<body>
<h1>Manage Service Provider</h1>
<p><a href="?add">Add New Service Provider</a></p>
<form action="" method="get">
<p>View service provider satisfying the following criteria:</p>

<div>
<label for="text">Search text:</label>
<input type="text" name="text" id="text"/>
</div>
<div>
<input type="hidden" name="action" value="search"/>
<input type="submit" value="Search"/>
</div>
</form>
<p><a href="..">Return to MIS home</a></p>
</body>
</html>