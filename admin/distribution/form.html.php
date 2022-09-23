<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title><?php htmlout($pagetitle); ?></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <style type="text/css">
    textarea {
        display: block;
        width: 100%;
    }
    </style>
</head>



<body>
    <h1><?php htmlout($pagetitle); ?></h1>
    <form action="?<?php htmlout($action); ?>" method="post">


        <div>
            <label for="fca">FCA:</label>
            <select name="fca" id="fca" onchange="FetchGroups(this.value)">
                <option value=''>Select FCA</option>

                <?php foreach ($fcas as $fca) : ?>
                <option value="<?php htmlout($fca['id']); ?>" <?php
                                                                    if ($fca['id'] == $fcaid)
                                                                        echo ' selected'; ?>>
                    <?php htmlout($fca['fcaname']); ?></option>
                <?php endforeach; ?>

            </select>
        </div>


        <div>
            <label for="group">Group:</label>
            <select name="group" id="group">
                <option value=''>Select Group</option>
                <?php foreach ($groups as $group) : ?>
                <option value="<?php htmlout($group['id']); ?>" <?php
                                                                    if ($group['id'] == $groupid)
                                                                        echo ' selected'; ?>>
                    <?php htmlout($group['groupname']); ?></option>
                <?php endforeach; ?>

            </select>
        </div>
        <div>
            <label for="item">Item:</label>
            <select name="item" id="item">
                <option value="">Select One</option>
                <?php foreach ($items as $item) : ?>
                <option value="<?php htmlout($item['id']); ?>" <?php
                                                                    if ($item['id'] == $itemid)
                                                                        echo ' selected'; ?>>
                    <?php htmlout($item['itemdesc']); ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <div>
            <label for="quantity">Quantity:</label>
            <input type="number" name="quantity" id="quantity" value="<?php htmlout($quantity); ?>" />
        </div>

        <div>
            <label for="sp">Service Provider:</label>
            <select name="sp" id="sp">
                <option value="">Select One</option>
                <?php foreach ($sps as $sp) : ?>
                <option value="<?php htmlout($sp['id']); ?>" <?php
                                                                    if ($sp['id'] == $spid)
                                                                        echo ' selected'; ?>>
                    <?php htmlout($sp['sp']); ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <div>
            <label for="ddate">Date:</label>
            <input type="date" name="ddate" id="ddate" value="<?php htmlout($ddate); ?>" />
        </div>

        <div>
            <label for="username">Username:</label>
            <input type="text" name="username" disabled="disabled" id="username" value="<?php htmlout($username); ?>" />
        </div>

        <div>
            <input type="hidden" name="id" value="<?php htmlout($id); ?>" />
            <input type="submit" value="<?php htmlout($button); ?>" />
        </div>

    </form>


    <script>
    function FetchGroups(id) {
        $("#group").html("");
        $.ajax({
            type: "post",
            url: "./get_groups.php",
            data: {
                fca_id: id
            },
            success: function(data) {
                $("#group").html(data);
            }
        })
    }
    </script>

    <script src="../jquery/dist/jquery.min.js"></script>


</body>

</html>