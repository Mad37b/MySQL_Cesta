<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertar Productos</title>
<link href="styleesheet" href="CSS/.css">
<link ref="icon" href="Imagenes/">
<%@ page import="java.* "%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
</head>
<body>


	

	<!--  establecer conexion -->

	<%
	
	 Connection conexion = null;
	 java.sql.Statement declaracion=null;
	 ResultSet resultado;
	 ResultSet registros = null ;
	 Statement estado = null;
	
	// Llamamos a la clase conexion 
	
	//Conexion conexion = new Conexion ();

	try {

		String controlador = "com.mysql.cj.jdbc.Driver";
		Class.forName(controlador);

		// Iniciar Sesion 

		String url = "jdbc:mysql://localhost:3306/partes";
		String usuario = "root";
		String pass = "root";

		//Driver

		conexion = DriverManager.getConnection(url, usuario, pass);
		out.println("conexion");

		estado = conexion.createStatement();
		//
		String nombre;
		int precio;
		String imagen;
		
		
		// Inserccion 
		
		String insertQuery = "INSERT INTO productos (nombre,precio,imagen) VALUES ("+ getString("'nombre'")+","+ getInt("precio") + getString("'imagen'");

		// Lanzamos la consulta

		resultado = estado.executeQuery(insertQuery);

		int filasInsertadas = 1;

		while (resultado.next()) {%>
			
			<div class="insertar">
			<textarea name="insertarProductos"> <%out.print(resultado.getString("nombre")+resultado.getString("precio")+resultado.getString("imagen")); %></textarea>
			<input type="submit" name="Producto"value="Insertar Productos"> 
			<input type="hidden"name="hProductos" value="vProductos">
		</div>

			<% 
		}

	} catch (SQLException e) {
		out.print("\n ha saltado esta excepcion 1");
	} finally {
		try {
			if (resultado != null)
		resultado.close();
			if (resultado != null)
		resultado.close();
			if (resultado != null)
		resultado.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	%>



</body>
</html>