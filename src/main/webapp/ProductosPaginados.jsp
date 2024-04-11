<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.Carrito"%>
<%@ page import="java.Catalogo"%>
<%@ page import="java.Producto"%>
<%@ page import="java.ElementodeCarrito"%>
<%@ page import="java.Conexion"%>


<html>
<head>
<meta charset="UTF-8">
<title>Productos Paginados</title>
</head>
<body>

<h2>Productos Paginados</h2>

<form name="Catalogo">
<label>Productos por pagina </label>

<select name="limite" id="nProductosVista">

    <option value="3">3</option>
    <option value="6">6</option>
    <option value="9">9</option>
    <option value="12">12</option>
    
  </select>

<!-- cargar formulario de productos--> 

<% 
int nPaginas=0;
int nElementos;
int nPaginaFinal;




%>



<%
// obtenemos los productos de cada pagina 
String query ="Select *from productos limit nPaginas,nElementos";



%>
</form>
<!--   cesta de la compra a un lado --> 

<%





%>



<!-- botones previuw y next-->
<%





%>

</form>

</body>
</html>