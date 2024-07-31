<%-- 
    Document   : ventas
    Created on : 8 jul. 2024, 9:27:06 p. m.
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>DMD</title>
    <link rel="stylesheet" href="CSS/ventas.css"> 
    <link rel="shortcut icon" href="IMG/Distribuidores Logotipo.png">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar close">
        <div class="logo-details">
            <span class="logo_name">
                <img src="IMG/logo.png" width="100%" height="100%" alt="Logo">
            </span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="ventas.jsp">
                    <i class='bx bx-cart'></i>
                    <span class="link_name">Ventas</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="ventas.jsp">Ventas</a></li>
                </ul>
            </li>
            <li>
                <div class="iocn-link">
                    <a href="control_caja.jsp">
                        <i class='bx bx-wallet'></i>
                        <span class="link_name">Caja chica</span>
                    </a>
                    <i class='bx bxs-chevron-down arrow'></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="control_caja.jsp">Caja chica</a></li>
                    <li><a href="control_caja.jsp">Control de caja</a></li>
                    <li><a href="historial_compra.jsp">Historial de compra</a></li>
                    <li><a href="salida_producto.jsp">Salida de productos</a></li>
                </ul>
            </li>
            <li>
                <div class="iocn-link">
                    <a href="gestionar_producto.jsp">
                        <i class='bx bx-store-alt'></i>
                        <span class="link_name">Gestionar</span>
                    </a>
                    <i class='bx bxs-chevron-down arrow'></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="gestionar_producto.jsp">Gestionar</a></li>
                    <li><a href="gestionar_producto.jsp">Productos</a></li>
                    <li><a href="gestionar_usuario.jsp">Usuarios</a></li>
                    <li><a href="gestionar_cliente.jsp">Clientes</a></li>
                    <li><a href="gestionar_proveedor.jsp">Proveedores</a></li>
                </ul>
            </li>
            <li>
                <div class="profile-details">
                    <div class="profile-content">
                        <img src="image/profile.jpg" alt="profileImg">
                    </div>
                    <div class="name-job">
                        <div class="profile_name">Prem Shahi</div>
                        <div class="job">Web Designer</div>
                    </div>
                    <form action="LoginServlet" method="post">
                        <a href="index.jsp">
                            <i class='bx bx-log-out'></i>
                            <input type="submit" value="Cerrar Sesión">
                        </a>
                    </form>
                </div>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <section class="home-section">
        <div class="home-content">
            <i class='bx bx-menu'></i>
            <span class="text">
                <h2>Ventas</h2>
            </span>
        </div>

        <!-- Main Container -->
        <div class="container">
            <!-- Subtitle and Add Product Button -->
            <div class="subtitulo">
                <h5>Todos los Productos</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Ventas
                </button>
            </div>

            <!-- Navigation Bar -->
            <div class="navigation-bar">
                <div class="search-container-id">
                    <input type="text" name="txtId" class="form-control" id="txtId" placeholder="ID">
                </div>
                <div class="search-container">
                    <input type="text" id="search-bar" placeholder="Buscar productos...">
                    <i class='bx bx-search'></i>
                </div>
                <div class="category-selector">
                    <select>
                        <option value="">Insumos Médicos</option>
                        <option value="categoria1">Equipos Médicos</option>
                        <option value="categoria2">Equipos Dentales</option>
                        <option value="categoria3">Laboratorio</option>
                        <option value="categoria4">Mobiliario</option>
                    </select>
                </div>
            </div>

            <!-- Products Table -->
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre del Producto</th>
                            <th scope="col">Categoría</th>
                            <th scope="col">Ubicación</th>
                            <th scope="col">P. Compra</th>
                            <th scope="col">P. Venta</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">01</th>
                            <td>Tensiometro Riester</td>
                            <td>Equipos médicos</td>
                            <td>Ubicación A</td>
                            <td>S/ 200</td>
                            <td>S/ 300</td>
                            <td class="acciones">
                                <button type="button" class="btn btn-info btnDetails" data-bs-toggle="modal" data-bs-target="#detailsModal">
                                    <i class='bx bx-chevron-right'></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Detalle Venta</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="formulario-modal">
                            <div class="row">
                                <!-- Columna Izquierda -->
                                <div class="col-md-6 pe-3 border-end">
                                    <div class="mb-3">
                                        <label for="txtDNI" class="form-label">DNI</label>
                                        <input type="text" name="txtDNI" class="form-control" id="txtDNI">
                                    </div>

                                    <div class="mb-3">
                                        <label for="txtCliente" class="form-label">Cliente</label>
                                        <input type="text" name="txtCliente" class="form-control" id="txtCliente">
                                    </div>

                                    <div class="mb-3">
                                        <label for="txtMetodoPago" class="form-label">Método de Pago</label>
                                        <select name="txtMetodoPago" id="txtMetodoPago" class="form-select">
                                            <option value="0">Caja Chica</option>
                                            <option value="1">Efectivo</option>
                                            <option value="2">Yape/Plin</option>
                                            <option value="3">Transferencia</option>
                                            <option value="4">Tarjeta</option>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="txtComprobante" class="form-label">Comprobante</label>
                                        <select name="txtComprobante" id="txtComprobante" class="form-select">
                                            <option value="0">Boleta</option>
                                            <option value="1">Factura</option>
                                        </select>
                                    </div>
                                </div>

                                <!-- Línea Vertical -->
                                <div class="col-md-6 ps-3">
                                    <div class="img-modal">
                                        <img src="IMG/Logo_de_la_Empresa_DMD-removebg-preview.png" alt="Logo Empresa" class="img-fluid mb-4">
                                    </div>
                                    <div class="mb-3">
                                        <label for="txtComentario" class="form-label">Comentario</label>
                                        <textarea name="txtComentario" class="form-control" id="txtComentario" rows="3" placeholder="Escribe un comentario..."></textarea>
                                    </div>

                                    <div class="mb-3">
                                        <label for="txtTotal" class="form-label">Total a Pagar</label>
                                        <input type="text" name="txtTotal" class="form-control" id="txtTotal" readonly>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success btnVender">Vender</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="JS/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
