<%-- 
    Document   : ventas
    Created on : 8 jul. 2024, 9:27:06 p. m.
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Drop Down Sidebar Menu | CodingLab </title>
    <link rel="stylesheet" href="CSS/menu.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
          <span class="link_name">Perfil</span>
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
          <a href="perfil.jsp">
              <img src="IMG/profile.jpg" alt="profileImg">
          </a>
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
      <span class="text">Ventas</span>
    </div>
  </section>

  <script src="JS/script.js"></script>

</body>
</html>