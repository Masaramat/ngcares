<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
        <div>
            <a href=" ./" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
                <svg class="bi me-2" width="30" height="24">
                    <use xlink:href="#speedometer" />
                </svg>
                <span class="fs-5 fw-semibold">Dashboard</span>
            </a>
            <ul class="list-unstyled ps-0">
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#home-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-house-door"></i></span>
                        Home
                    </button>
                    <div class="collapse " id="home-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../" class="link-dark rounded">Overview</a></li>

                        </ul>
                    </div>
                </li>
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#dashboard-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-person"></i></span>
                        Users
                    </button>
                    <div class="collapse " id="dashboard-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="./" class="link-dark rounded active">View</a></li>
                            <li><a href="./?add" class="link-dark rounded">New
                                    User</a></li>

                        </ul>
                    </div>
                </li>

                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#fca-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-tags"></i></span>
                        FCAs
                    </button>
                    <div class="collapse " id="fca-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../fcas/" class="link-dark rounded">View</a></li>
                            <li><a href="../fcas/?add" class="link-dark rounded">New FCA</a></li>

                        </ul>
                    </div>
                </li>
                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#groups-collapse" aria-expanded="true">
                        <span class="mx-1"><i class="bi bi-people"></i></span>
                        Groups
                    </button>
                    <div class="collapse show" id="groups-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../groups/" class="link-dark rounded">View</a></li>
                            <li><a href="../groups/?add" class="link-dark rounded">New Group</a></li>

                        </ul>
                    </div>
                </li>
                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#beneficiaries-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-person-check"></i></span>
                        Beneficiaries
                    </button>
                    <div class="collapse " id="beneficiaries-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../beneficiaries/" class="link-dark rounded">View</a></li>
                            <li><a href="../beneficiaries/?add" class="link-dark rounded">New Beneficiary</a></li>

                        </ul>
                    </div>
                </li>
                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#distributions-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-people"></i></span>
                        Distributions
                    </button>
                    <div class="collapse " id="distributions-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../distribution" class="link-dark rounded">View</a></li>

                        </ul>
                    </div>
                </li>
                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#service-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-person-check"></i></span>
                        Service Providers
                    </button>
                    <div class="collapse " id="service-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../serviceprovider/" class="link-dark rounded">View</a></li>
                            <li><a href="../serviceprovider/?add" class="link-dark rounded">New S/Provider</a></li>

                        </ul>
                    </div>
                </li>
                <li class=" mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#reports-collapse" aria-expanded="false">
                        <span class="mx-1"><i class="bi bi-file-earmark-text"></i></span>
                        Reports
                    </button>
                    <div class="collapse " id="reports-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="../reports/?beneficiaries" class="link-dark rounded">Beneficiaries Report</a></li>
                            <li><a href="../reports/?inputs" class="link-dark rounded">Inputs and Services Report</a></li>
                            <li><a href="../reports/?lgainputs" class="link-dark rounded">LGA Inputs and Services Report</a></li>
                            <li><a href="../reports/?group_assets" class="link-dark rounded">Group Assets Report</a></li>
                            <li><a href="../reports/?lgagroup_assets" class="link-dark rounded">LGA Group Assets Report</a></li>
                            <li><a href="../reports/?individual_assets" class="link-dark rounded">Individual Assets Report</a></li>
                            <li><a href="../reports/?lgaindividual_assets" class="link-dark rounded">LGA Individual Assets Report</a></li>
                        </ul>

                </li>
       
                <li class="border-top my-3"></li>
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                        data-bs-target="#account-collapse" aria-expanded="false">
                        <i class="bi bi-person-square me-2"></i>
                        <?php echo $_SESSION['userdata']; ?>
                    </button>
                    <div class="collapse" id="account-collapse">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a class="link-dark rounded" href=""><?php include_once '../../logout.inc.html.php'; ?></a>
                            </li>

                        </ul>
                    </div>
                </li>
            </ul>

    </div>
    </div>
</nav>