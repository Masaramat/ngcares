<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title>Beneficiaries Report</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body>
    <h1>Beneficiaries Report</h1>
    <p><a href=".">Back</a></p>
    <form action="" method="get">
        <p>View beneficiaries satisfying the following criteria:</p>

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
            <label for="dli">By DLI:</label>
            <select name="dli" id="dli" onchange="FetchEnterprise(this.value)">
                <option value="">All DLI</option>
                <?php foreach ($dlis as $dli) : ?>
                <option value="<?php htmlout($dli['id']); ?>"> <?php htmlout($dli['dliname']); ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <div>
            <label for="enterprise">By Enterprise:</label>
            <select name="enterprise" id="enterprise">
                <option value=''>All Enterprises</option>
            </select>
        </div>


        <div>
            <label for="gender">Gender:</label>
            <select name="gender" id="gender">
                <option value="">All</option>
                <?php foreach ($genders as $gender) : ?>
                <option value="<?php htmlout($gender['gencode']); ?>"> <?php htmlout($gender['gendesc']); ?></option>
                <?php endforeach; ?>
            </select>
        </div>


        <div>
            <input type="hidden" name="action" value="searchbeneficiary" />
            <input type="submit" value="searchbeneficiary" />
        </div>
    </form>
    <p><a href="..">Return to MIS home</a></p>



    <script>
    //this is the code that fills the enterprise selection box using the dli id selector
    function FetchEnterprise(id) {
        $("#enterprise").html("");
        $.ajax({
            type: "post",
            url: "./get_enterprise.php",
            data: {
                dli_id: id
            },
            success: function(data) {
                $("#enterprise").html(data);
            }
        })
    }
    </script>
    <script src="../jquery/dist/jquery.js"></script>
</body>

</html>