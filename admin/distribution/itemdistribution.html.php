<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title>Manage Distributions</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">



    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="../../node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../node_modules/datatables/datatables.min.css" />
    <script type="text/javascript" src="../../node_modules/datatables/datatables.min.js"></script>

    <style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
    </style>


    <!-- Custom styles for this template -->
    <link href="../../includes/local/dashboard.css" rel="stylesheet">
    <!-- editable css files -->
    <link href="../../includes/local/sidebars.css" rel="stylesheet">
</head>

<body>

    <?php include "header.php"; ?>
    <div class="row">
        <?php include "sidebar.php" ?>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="container-fluid">
                <div class="row">
                    <div
                        class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Manage Procument</h1>


                    </div>

                </div>
                <?php if (isset($distributions)) : ?>
                <table id="users_table" class="table table-striped table-bordered nowrap table-responsive">
                    <thead>
                        <tr>
                            <th> S/N</th>
                            <th>Group Name</th>
                            <th>Item</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                            <th>FCA</th>
                            <th>LGA</th>
                            <th>Date</th>
                            <th>Username</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $xy = 1;
              foreach ($distributions as $distribution) :
              ?>
                        <tr valign="top">
                            <td><?php htmlout($xy); ?></td>
                            <td><?php htmlout($distribution['groupname']); ?></td>
                            <td><?php htmlout($distribution['itemdesc']); ?></td>
                            <td><?php htmlout($distribution['quantity']); ?></td>
                            <td><?php htmlout($distribution['unit']); ?></td>
                            <td><?php htmlout($distribution['fcaname']); ?></td>
                            <td><?php htmlout($distribution['lganame']); ?></td>
                            <td><?php htmlout($distribution['date']); ?></td>
                            <td><?php htmlout($distribution['username']); ?></td>
                        </tr>
                        <?php $xy++;
              endforeach; ?>
                </table>
                <?php endif; ?>


            </div>

        </main>


    </div>


    <script src="../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
        integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous">
    </script>

    <script src="../../includes/local/sidebars.js"></script>
    <script src="../../includes/local/dashboard.js"></script>

    <script>
    $(document).ready(function() {
        var table = $('#users_table').DataTable({
            responsive: true
        });

        new $.fn.dataTable.FixedHeader(table);
    });
    </script>
</body>

</html>