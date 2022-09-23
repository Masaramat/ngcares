<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title>Manage Groups: Search Results</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body>
    <h1>Search Results</h1>
    <?php if (isset($beneficiaries)) : ?>
    <table>
        <tr>
            <th> S/N</th>
            <th>Beneficiary Name</th>
            <th>Means of ID</th>
            <th>ID Number</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Group</th>
            <th>Enterprise</th>
            <th>FCA</th>
            <th>LGA</th>
            <th>Options</th>
        </tr>
        <?php $xy = 1;
      foreach ($beneficiaries as $beneficiary) :
      ?>
        <tr valign="top">
            <td><?php htmlout($xy); ?></td>
            <td><?php htmlout($beneficiary['beneficiary']); ?></td>
            <td><?php htmlout($beneficiary['moidesc']); ?></td>
            <td><?php htmlout($beneficiary['idno']); ?></td>
            <td><?php htmlout($beneficiary['age']); ?></td>
            <td><?php htmlout($beneficiary['gender']); ?></td>
            <td><?php htmlout($beneficiary['groupname']); ?></td>
            <td><?php htmlout($beneficiary['enterprise']); ?></td>
            <td><?php htmlout($beneficiary['fcaname']); ?></td>
            <td><?php htmlout($beneficiary['lganame']); ?></td>
            <td>
                <form action="?" method="post">
                    <div>
                        <input type="hidden" name="id" value="<?php htmlout($beneficiary['id']); ?>" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                    </div>
                </form>
            </td>
        </tr>
        <?php $xy++;
      endforeach; ?>
    </table>
    <?php endif; ?>
    <p><a href="?">New search</a></p>
    <p><a href="..">Return to MIS home</a></p>
    <?php include '../logout.inc.html.php'; ?>
</body>

</html>