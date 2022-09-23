<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title>Individual Assets Report</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body>
    <h1>DLI 2.3: Individual Assets Report (By LGA)</h1>
    <p><a href=".">Back</a></p>
    <form action="" method="get">
        <p>View Individual Assets, using the following criteria:</p>

        <div>
            <label for="lga">By LGA:</label>
            <select name="lga" id="lga">
                <option value="">All LGA</option>
                <?php foreach ($lgas as $lga) : ?>
                <option value="<?php htmlout($lga['id']); ?>"><?php htmlout($lga['name']); ?></option>
                <?php endforeach; ?>
            </select>
        </div>


        <div>
            <label for="enterprise">By Enterprise:</label>
            <select name="enterprise" id="enterprise">
                <option value=''>All Enterprises</option>
                <?php foreach ($enterprises as $enterprise) : ?>
                <option value="<?php htmlout($enterprise['id']); ?>"> <?php htmlout($enterprise['enterprise']); ?>
                </option>
                <?php endforeach; ?>
            </select>
        </div>


        <div>
            <input type="hidden" name="action" value="searchlgaindassets" />
            <input type="submit" value="Search" />
        </div>
    </form>
    <p><a href="..">Return to MIS home</a></p>


</body>

</html>