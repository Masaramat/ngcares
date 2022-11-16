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

    .form-label {
        margin-top: 2px;
    }
    </style>


    <!-- Custom styles for this template -->
    <link href="../../includes/local/dashboard.css" rel="stylesheet">
    <!-- editable css files -->
    <link href="../../includes/local/sidebars.css" rel="stylesheet">
</head>



<body>
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

                        <div class="container col-md-12 col-sm-12 col-xs-12">
                            <div class="h-100 p-3 pt-5 bg-light border border-dark rounded-3">

                                <form action="?<?php htmlout($action); ?>" method="post">
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label class="form-label" for="lga">LGA:</label>
                                            <select class="form-control form-select" name="lga" id="lga"
                                                onchange="FetchFCA(this.value)">
                                                <option value="">Select one</option>
                                                <?php foreach ($lgas as $lga) : ?>
                                                <option value="<?php htmlout($lga['id']); ?>" <?php
																									if ($lga['id'] == $lgaid)
																										echo ' selected="selected"'; ?>>
                                                    <?php htmlout($lga['name']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-4">
                                            <label class="form-label" for="fca">FCA:</label>
                                            <select class="form-control form-select" name="fca" id="fca"
                                                onchange="FetchGroups(this.value)">
                                                <?php foreach ($fcas as $fca) : ?>
                                                <option value="<?php htmlout($fca['id']); ?>" <?php
																									if ($fca['id'] == $fcaid)
																										echo ' selected="selected"'; ?>>
                                                    <?php htmlout($fca['fcaname']); ?></option>
                                                <?php endforeach; ?>

                                            </select>
                                        </div>


                                        <div class="form-group col-md-4">
                                            <label class="form-label" for="group">Group:</label>
                                            <select class="form-control form-select" name="group" id="group">
                                                <?php foreach ($groups as $group) : ?>
                                                <option value="<?php htmlout($group['id']); ?>" <?php
																									if ($group['id'] == $groupid)
																										echo ' selected="selected"'; ?>>
                                                    <?php htmlout($group['groupname']); ?></option>
                                                <?php endforeach; ?>

                                            </select>
                                        </div>


                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-5">
                                            <label class="form-label" for="fca">Name of Beneficiary</label>
                                            <input class="form-control" type="text" id="beneficiary" name="beneficiary"
                                                rows="2" cols="20" value="<?php htmlout($beneficiary); ?>">
                                        </div>

                                        <div class="form-group col-md-4">
                                            <label class="form-label" for="moi">Means of Idenfication</label>
                                            <select class="form-control form-select" name="moi" id="moi">
                                                <option value="">Select one</option>
                                                <?php foreach ($mois as $moi) : ?>
                                                <option value="<?php htmlout($moi['id']); ?>" <?php
																									if ($moi['id'] == $moiid)
																										echo ' selected="selected"'; ?>>
                                                    <?php htmlout($moi['moidesc']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-3">
                                            <label class="form-label" for="idno">ID Number</label>
                                            <input class="form-control" type="idno" name="idno" id="idno"
                                                value="<?php htmlout($idno); ?>" />
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <label class="form-label" for="age">Age:</label>
                                            <input class="form-control" type="age" name="age" id="age"
                                                value="<?php htmlout($age); ?>" />
                                        </div>

                                        <div class="form-group col-md-3">
                                            <label class="form-label" for="gender">Gender:</label>
                                            <select class="form-control form-select" name="gender" id="gender">
                                                <option value="">Select one</option>
                                                <?php foreach ($genders as $gender) : ?>
                                                <option value="<?php htmlout($gender['gencode']); ?>" <?php
																											if ($gender['gencode'] == $genderx)
																												echo ' selected="selected"'; ?>>
                                                    <?php htmlout($gender['gendesc']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>



                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="vulstatus">Vulnerability Status:</label>
                                            <input class="form-control" type="vulstatus" name="vulstatus" id="vulstatus"
                                                value="<?php htmlout($vulstatus); ?>" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label class="form-label" for="phone">Phone No.:</label>
                                            <input class="form-control" type="phone" name="phone" id="phone"
                                                value="<?php htmlout($phone); ?>" />
                                        </div>

                                        <div class="form-group col-md-8">
                                            <label class="form-label" for="address">Contact Address:</label>
                                            <textarea class="form-control" id="address" name="address" rows="2"
                                                cols="20"><?php htmlout($address); ?></textarea>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="farmlocation">Farm Location:</label>
                                            <textarea class="form-control" id="farmlocation" name="farmlocation"
                                                rows="2" cols="20"><?php htmlout($farmlocation); ?></textarea>
                                        </div>

                                        <div class="form-group col-md-3">
                                            <label class="form-label" for="longitude">Longitude:</label>
                                            <input class="form-control" type="longitude" name="longitude" id="longitude"
                                                value="<?php htmlout($longitude); ?>" />
                                        </div>

                                        <div class="form-group col-md-3">
                                            <label class="form-label" for="latitude">Latitude:</label>
                                            <input class="form-control" type="latitude" name="latitude" id="latitude"
                                                value="<?php htmlout($latitude); ?>" />
                                        </div>

                                    </div>




                                    <div class="form-group mt-3 col-md-4">
                                        <input type="hidden" name="id" value="<?php htmlout($id); ?>" />
                                        <input class="btn btn-success" type="submit"
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






    <script>
    //this is the code that fills the state selection box using the state id selector

    function FetchFCA(id) {
        $("#fca").html("");
        $.ajax({
            type: "post",
            url: "./get_fca.php",
            data: {
                lga_id: id
            },
            success: function(data) {
                $("#fca").html(data);
            }
        })
    }


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

    <script src="../../node_modules/jquery/dist/jquery.min.js"></script>

    <script src="../../node_modules/jquery/dist/jquery.min.js"></script>
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