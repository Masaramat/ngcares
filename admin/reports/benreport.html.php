<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title>Beneficiaries Report</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">



    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="../../node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link href="../../node_modules/datatables/DataTables-1.11.5/css/buttons.dataTables.min.css" rel="stylesheet">
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
        <?php include "sidebar.php"; ?>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="container-fluid">
                <div class="row">
                    <div
                        class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Beneficiaries Report</h1>


                    </div>


                </div>
                <div class="row">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <form action="" method="get">
                        <div class="row mb-2">


                            <div class="form-group col-md-2">
                                <select class="form-control form-select" name="lga" id="lga">
                                    <option value="">All LGA</option>
                                    <?php foreach ($lgas as $lga) : ?>
                                    <option value="<?php htmlout($lga['id']); ?>"><?php htmlout($lga['name']); ?>
                                    </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="form-group col-md-2">

                                <select class="form-control form-select" name="dli" id="dli" onchange="FetchEnterprise(this.value)">
                                    <option value="">All DLI</option>
                                    <?php foreach ($dlis as $dli) : ?>
                                    <option value="<?php htmlout($dli['id']); ?>"> <?php htmlout($dli['dliname']); ?>
                                    </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="form-group col-md-4">

                                <select class="form-control form-select" name="enterprise" id="enterprise">
                                    <option value=''>All Enterprises</option>
                                </select>
                            </div>


                            <div class="form-group col-md-2">

                                <select class="form-control form-select" name="gender" id="gender">
                                    <option value="">All Gender</option>
                                    <?php foreach ($genders as $gender) : ?>
                                    <option value="<?php htmlout($gender['gencode']); ?>">
                                        <?php htmlout($gender['gendesc']); ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>


                            <div class="form-group col-md-2">
                                <input type="hidden" name="action" value="searchbeneficiary" />
                                <input class="form-control btn btn-success" type="submit" value="Search" />
                            </div>
                            </div>
                        </form>
                    </div>
                <?php if (isset($beneficiaries)) : ?>
                <table id="users_table" class="table table-striped table-bordered nowrap table-responsive">
                    
                        
                    
                    <thead>
                        <tr>
                            <th>S/NO</th>
                            <th>Beneficiary Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Group</th>
                            <th>Enterprise</th>
                            <th>FCA</th>
                            <th>LGA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($beneficiaries as $beneficiary) :
                            ?>
                        <tr valign="top">
                            <td><?php htmlout($beneficiary['id']); ?></td>
                            <td><?php htmlout($beneficiary['beneficiary']); ?></td>
                            <td><?php htmlout($beneficiary['age']); ?></td>
                            <td><?php htmlout($beneficiary['gender']); ?></td>
                            <td><?php htmlout($beneficiary['groupname']); ?></td>
                            <td><?php htmlout($beneficiary['enterprise']); ?></td>
                            <td><?php htmlout($beneficiary['fcaname']); ?></td>
                            <td><?php htmlout($beneficiary['lganame']); ?></td>

                        </tr>
                        <?php endforeach; ?>
                </table>
                <?php endif; ?>
                </div>

                



            </div>

        </main>

    </div>


    <!-- bootstrap export js includes -->
    <script src="../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/jquery-3.5.1.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/dataTables.buttons.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/jszip.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/pdfmake.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/vfs_fonts.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/buttons.html5.min.js"></script>
    <script src="../../node_modules/datatables/DataTables-1.11.5/js/buttons.print.min.js"></script>

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
            responsive: true,
            scrollY: 380,
            scrollCollapse: true,

            dom: 'riptlB',
            lengthMenu: [
                [25, 50, 100, -1],
                [25, 50, 100, 'All'],
            ],
            

            buttons: [
                {
                extend: 'spacer',
                style: 'bar',
                text: 'Export file as:'
            },
                'excel', 'pdf', "  "
            ],
            
        });

        new $.fn.dataTable.FixedHeader(table);
    });

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

</body>

</html>