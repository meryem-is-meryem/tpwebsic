import React from 'react'
import '../style/styles.css'

export default function () {
  return (
    <div>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
           
            <a class="navbar-brand ps-3" href="index.html">Interface</a>
        
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
           
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
           
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                comptes administrateurs
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        creation de compte
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i> </div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link" href="supprision de compt-administrateur.html">supprision de compte</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                comptes gestionnaires
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        creation de compte
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i> </div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link" href="supprision de compt-administrateur.html">supprision de compte</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                   
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <a href="creation produit.html" class="text-decoration-none text-dark">
                                    <div class="card bg-primary text-white mb-4">
                                        <div class="card-body">Cree un produit</div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-3 col-md-6">
                                <a href="modifier produit.html" class="text-decoration-none text-dark">
                                    <div class="card bg-warning text-white mb-4">
                                        <div class="card-body">Modifier produit</div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-3 col-md-6">
                                <a href="supprimer produit.html" class="text-decoration-none text-dark">
                                    <div class="card bg-success text-white mb-4">
                                        <div class="card-body">Supprimer produit</div>
                                    </div>
                                </a>
                            </div>                            
                            
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        produit homme
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        produit femme
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                  produit vendu
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Nom</th>
                                            <th>Type</th>
                                            <th>Genre</th>
                                            <th>Date de Vente</th>
                                            <th>Prix</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                        <tr>
                                            <td>Parfum Homme</td>
                                            <td>Parfum</td>
                                            <td>Homme</td>
                                            <td>2022/03/01</td>
                                            <td>€50.00</td>
                                        </tr>
                                        <tr>
                                            <td>Gel Douche Sport</td>
                                            <td>Gel Douche</td>
                                            <td>Homme</td>
                                            <td>2022/03/05</td>
                                            <td>€12.99</td>
                                        </tr>
                                
                                        
                                        <tr>
                                            <td>Lotion nivea Femme</td>
                                            <td>lotion</td>
                                            <td>Femme</td>
                                            <td>2022/03/02</td>
                                            <td>€45.00</td>
                                        </tr>
                                        <tr>
                                            <td>Rouge à Lèvres Rose</td>
                                            <td>Rouge à Lèvres</td>
                                            <td>Femme</td>
                                            <td>2022/03/04</td>
                                            <td>€15.50</td>
                                        </tr>
                                       
                                    <tr>
                                        <td>Crème Hydratante Homme</td>
                                        <td>Crème Hydratante</td>
                                        <td>Homme</td>
                                        <td>2022/03/10</td>
                                        <td>€24.99</td>
                                    </tr>
                                    <tr>
                                        <td>Deodorant Fraîcheur Homme</td>
                                        <td>Déodorant</td>
                                        <td>Homme</td>
                                        <td>2022/03/15</td>
                                        <td>€8.50</td>
                                    </tr>
    
                                    
                                    <tr>
                                        <td>Vernis à Ongles Rouge</td>
                                        <td>Vernis à Ongles</td>
                                        <td>Femme</td>
                                        <td>2022/03/12</td>
                                        <td>€10.99</td>
                                    </tr>
                                    <tr>
                                        <td>Parfum Floral Femme</td>
                                        <td>Parfum</td>
                                        <td>Femme</td>
                                        <td>2022/03/18</td>
                                        <td>€55.00</td>
                                    </tr>
    
                                
                                    </tbody>
                                </table>
    
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>

    </div>
  )
}
