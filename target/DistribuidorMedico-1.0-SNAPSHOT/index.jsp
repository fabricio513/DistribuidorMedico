<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DMD</title>
    <link rel="stylesheet" href="CSS/login.css">
    <link rel="shortcut icon" href="IMG/Distribuidores Logotipo.png">
</head>
<body>

    <div class="container">
        <div class="container-form">
            <form action="LoginServlet" method="post" class="sign-in">
                <img src="IMG/Logo_de_la_Empresa_DMD-removebg-preview.png" alt="Logo de la Empresa DMD" class="login-image">
                <div class="container-input">
                    <ion-icon name="person-outline"></ion-icon>
                    <input type="text" name="txtuser" placeholder="Usuario">
                </div>
                <div class="container-input">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" name="txtpass" placeholder="Contraseña">
                </div>
                
                <input type="submit" name="accion" value="Iniciar sesion" class="button">
                
                <a href="forgotPassword.jsp" class="forgot-password" class="button" id="btn-sign-up" >¿Olvidaste tu contraseña?</a>
            </form>
        </div>

        <div class="container-form">
            <form class="sign-up">
                <h2>Recuperar</h2>
                <span>Use su correo electrónico para recuperar su contraseña</span>

                <div class="container-input">
                    <ion-icon name="mail-outline"></ion-icon>
                    <input type="text" placeholder="Email">
                </div>
                <button class="button" >Enviar</button>
            </form>
        </div>

        <div class="container-welcome">
            <div class="welcome-sign-up welcome">
                <h3>¡Bienvenido!</h3>
                <p>Ingrese sus datos personales para usar todas las funciones del sitio</p>
            </div>
            <div class="welcome-sign-in welcome">
                <h3>¡Hola!</h3>
                <p>Se enviara una contraseña temporal a su correo</p>
                <button class="button" id="btn-sign-in">Iniciar Sesión</button>
            </div>
        </div>

    </div>


    <script src="JS/login.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>