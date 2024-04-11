<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista del Carro - Supermercados</title>
</head>
<body>

<h2>Mis Productos</h2>

<form name="Formulario de Compra" action="index.jsp" method="post">

<input type="checkbox" name="productos" value="PC videjuegos" > <p>Pc Videojuegos</p> <br>
<input type="checkbox" name="productos" value="Playstation 5" > <p>Playstation 5</p> <br>
<input type="checkbox" name="productos" value="Nintendo Swicht 2" > <p>Nintendo Swicht 2</p> 
<input type="checkbox" name="productos" value="Meta Quest 4" > <p>Meta Quest 4</p> <br>
<input type="checkbox" name="productos" value="Dron Vision 16k" > <p>Dron Vision 16k</p> <br>

<input type ="submit" name ="enviar"  value ="Comprar Productos">
<input type="button" name="Cerrar Sesion" value="Cerrar Sesion">
<input type="hidden" name = "accion" value="continuarSesion">


<h3>Carro de la compra</h3>

<%

String accion= request.getParameter("accion");

if(accion!=null && accion.equals("cerrarSesion")){
session.invalidate();	
request.getSession(true);
response.sendRedirect("index.jsp");
}


List<String>misCompras=(List <String>) session.getAttribute("misCompras") ;

if ( misCompras==null){
	misCompras=new ArrayList <String>( );
	//Nombre de la sesion y guardar objeto en la sesion 
session.setAttribute("misCompras",misCompras);
}

String[] elementosComprados=request.getParameterValues("productos") ; 

if(elementosComprados!=null){
	for(String elemCarro : elementosComprados){
		misCompras.add(elemCarro);
		
	}
	
}

if (elementosComprados!=null){
	
	for(String elementoCarro : misCompras){
		out.println("<li>"+elementoCarro+"</li>");
	}
}

%>




</form>


</body>
</html>