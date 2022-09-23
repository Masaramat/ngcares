<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/ngcares/includes/helpers.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <title><?php htmlout($pagetitle); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">



    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="../../node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../node_modules/DataTables/datatables.min.css" />
    <script type="text/javascript" src="../../node_modules/DataTables/datatables.min.js"></script>

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
    <div class="container-fluid">
        <div class="row">
            <?php include "sidebar.php"; ?>


            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                <div class="container-fluid">
                    <div class="row">
                        <div
                            class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                            <h1 class="h2"><?php htmlout($pagetitle); ?></h1>

                        </div>
                    </div>
                    <div class="row mx-auto">

                        <div class="container col-md-8">
                            <div class="h-100 p-5 bg-light border border-dark rounded-3">


                                <form action="?<?php htmlout($action); ?>" method="post">
                                    <div class="form-group">
                                        <label class="form-label" for="suppliername">Supplier Name</label>
                                        <input class="form-control" type="text" name="suppliername" id="suppliername"
                                            value="<?php htmlout($suppliername); ?>" />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="email">Email</label>
                                        <input class="form-control" type="text" name="email" id="email"
                                            value="<?php htmlout($email); ?>" />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="phone">Phone</label>
                                        <input class="form-control" type="text" name="phone" id="phone"
                                            value="<?php htmlout($phone); ?>" />
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label" for="item">Item</label>
                                        <select class="form-control form-select" name="item" id="item">
                                            <option value=""> Select One: </option>
                                            <?php foreach ($items as $item) : ?>
                                            <option value="<?php htmlout($item['id']); ?>"
                                                <?php
                                                                                                if ($item['id'] == $itemid)
                                                                                                    echo ' selected="selected"'; ?>>
                                                <?php htmlout($item['itemdesc']); ?>
                                            </option>
                                            <?php endforeach; ?>

                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label" for="status">Supplier Status:</label>
                                        <select class="form-control" name="status" id="status">
                                            <option value="">Select One</option>
                                            <option value="active"
                                                <?php if ($supplierstatus == 'active') echo ' selected="selected"'; ?>>
                                                Active
                                            </option>
                                            <option value="inactive"
                                                <?php if ($supplierstatus == 'inactive') echo ' selected="selected"'; ?>>
                                                Inactive </option>

                                        </select>
                                    </div>


                                    <div class="form-group mt-3 col-md-4">
                                        <input type="hidden" name="id" value="<?php htmlout($id); ?>" />
                                        <input class="form-control btn btn-success" type="submit"
                                            value="<?php htmlout($button); ?>" />
                                    </div>
                                </form>

                            </div>
                        </div>


                    </div>
                </div>
        </div>

        </main>
    </div>
    </div>
    <h1><?php htmlout($pagetitle); ?></h1>
    <form action="?<?php htmlout($action); ?>" method="post">
        <div>
            <label for="suppliername">Supplier Name: <input type="text" name="suppliername" id="suppliername"
                    value="<?php htmlout($suppliername); ?>" /></label>
        </div>
        <div>
            <label for="email">Email: <input type="text" name="email" id="email"
                    value="<?php htmlout($email); ?>" /></label>
        </div>
        <div>
            <label for="phone">Phone: <input type="text" name="phone" id="phone"
                    value="<?php htmlout($phone); ?>" /></label>
        </div>

        <div>
            <label for="item">Item:</label>
            <select name="item" id="item">
                <option value=""> Select One: </option>
                <?php foreach ($items as $item) : ?>
                <option value="<?php htmlout($item['id']); ?>" <?php
                                                                    if ($item['id'] == $itemid)
                                                                        echo ' selected="selected"'; ?>>
                    <?php htmlout($item['itemdesc']); ?>
                </option>
                <?php endforeach; ?>

            </select>
        </div>

        <div>
            <label for="status">Supplier Status:</label>
            <select name="status" id="status">
                <option value="">Select One</option>
                <option value="active" <?php if ($supplierstatus == 'active') echo ' selected="selected"'; ?>> Active
                </option>
                <option value="inactive" <?php if ($supplierstatus == 'inactive') echo ' selected="selected"'; ?>>
                    Inactive </option>

            </select>
        </div>


        <div>
            <input type="hidden" name="id" value="<?php htmlout($id); ?>" />
            <input type="submit" value="<?php htmlout($button); ?>" />
        </div>
    </form>


    <script src="../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
        integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous">
    </script>

    <script src="../../includes/local/sidebars.js"></script>
    <script src="../../includes/local/dashboard.js"></script>


</body>

</html>