<%-- 
    Document   : login
    Created on : 03-jun-2024, 0:46:07
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Segundo Formulario</title>
</head>
<body>
    <h1>Login</h1>
    <form action="ProcesarDatosServlet" method="post">
        <%-- Obtener los datos del primer formulario --%>
        <% String usu1 = request.getParameter("usu1"); %>
        <% String contra1 = request.getParameter("contra1"); %>
        
        <%-- Campos ocultos para usu1 y contra1 --%>
        <input type="hidden" id="usu1_hidden" name="usu1_hidden" value="<%= usu1 %>">
        <input type="hidden" id="contra1_hidden" name="contra1_hidden" value="<%= contra1 %>">
        
        <%-- Campos para ingresar usu2 y contra2 --%>
        <label for="usu2">Usuario 2:</label>
        <input type="text" id="usu2" name="usu2"><br><br>
        <label for="contra2">Contraseña 2:</label>
        <input type="password" id="contra2" name="contra2"><br><br>
        
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
