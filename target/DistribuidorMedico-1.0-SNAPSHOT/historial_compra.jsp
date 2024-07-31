<%-- 
    Document   : ventas
    Created on : 8 jul. 2024, 9:27:06 p. m.
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title> Drop Down Sidebar Menu | CodingLab </title>
        <link rel="stylesheet" href="CSS/menu.css">
        <link rel="stylesheet" href="CSS/cruds.css">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="sidebar close">
            <div class="logo-details">
                <i class='bx bx-plus-medical'></i>
                <span class="logo_name"><img src="IMG/Logo_de_la_Empresa_DMD-removebg-preview.png" width="110em" height="110em"></span>
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
                        <i class='bx bxs-chevron-down arrow' ></i>
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
                            <i class='bx bx-store-alt' ></i>
                            <span class="link_name">Gestionar</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow' ></i>
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
                            <div class="job">Web Desginer</div>
                        </div>
                        <form action="LoginServlet" method="post">
                            <a href="index.jsp">
                                <i class='bx bx-log-out' >
                                    <input type="submit" value="Cerrar Sesión">
                                </i>
                            </a>
                        </form>
                    </div>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <div class="home-content">
                <i class='bx bx-menu' ></i>
                <span class="text"><h2>Control de caja</h2></span>
            </div>
            <div class="container">
                <div class="subtitulo">
                    <h5>Historial de compras</h5>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Agregar <i class='bx bx-add-to-queue' ></i>
                    </button>
                    <button type="button" class="btn btn-secondary">PDF <i class='bx bxs-file-pdf' ></i></button>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Fecha compra</th>
                                <th scope="col">Cantidad compra</th>
                                <th scope="col">Precio compra</th>
                                <th scope="col">Proveedor</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>20 julio</td>
                                <td>100</td>
                                <td>500</td>
                                <td>Medical plus</td>
                                <td class="acciones">                            
                                    <button type="button" class="btn btn-success btnEditar" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class='bx bx-edit-alt'></i></button>
                                    <button type="button" class="btn btn-danger btnEliminar"><i class='bx bx-trash'></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Datos de la caja</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div>
                                <form class="formulario-modal">
                                    <div class="row">
                                        <div class="col-6">
                                            <label>ID</label>
                                            <input type="text" name="txtId" class="form-control" id="txtId" value="0" readonly="true">
                                        </div>
                                        <div class="col-6">
                                            <label>Fecha compra</label>
                                            <input type="date" name="txtFecha" class="form-control" id="txtFecha">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <label>Cantidad compra</label>
                                            <input type="number" name="txtCantidad" class="form-control" id="txtCantidad" value="0">
                                        </div>
                                        <div class="col-6">
                                            <label>Precio compra</label>
                                            <input type="number" name="txtCantidad" class="form-control" id="txtCantidad" value="0">
                                        </div>
                                    </div>
                                                                        <div class="row">
                                        <div class="col-6">
                                            <label>Proveedor</label>
                                            <input type="text" name="txtProveedor" class="form-control" id="txtProveedor">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <button type="button" class="btn btn-primary">Guardar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="JS/script.js"></script>
        <script src="javascript.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
</html>
