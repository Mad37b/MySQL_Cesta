
<%@page import="clases.Carrito"%>
<%@page import="clases.ElementoDeCarrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Producto"%>
<%@page import="clases.Catalogo"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tienda de Estilográficas</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap"
	rel="stylesheet">

<style>
h1 {
	font-family: 'Great Vibes', cursive;
	font-size: 6em;
}

.carrito {
	border: #ffc107 solid 2px;
	border-radius: 6px;
	padding: 4px;
}
</style>
</head>
<body>
	<%
	Catalogo catalogo = new Catalogo();
	catalogo.cargarDatos();

	if (session.getAttribute("carrito") == null) {
		Carrito carrito = new Carrito();
		session.setAttribute("carrito", carrito);
	}
	%>
	<br>
	<h1 class="text-center">Tienda de Productos</h1>

	<div class="container">
		<div class="row">

			<!-- Colocar el Catálogo de productos -->

			<div class="col">
				<div class="row">
					<%
					for (Producto p : catalogo.getProductos()) {
					%>

					<div class="col-sm-4">
						<div class="card">
							<img src="img/<%=p.getImagen()%>" class="card-img-top img-fluid">
							<div class="card-body">
								<h4 class="card-title"><%=p.getNombre()%></h4>
								<h5><%=String.format("%.2f", p.getPrecio())%>
									€
								</h5>
								<a href="compra.jsp?codigo=<%=p.getCodigo()%>"
									class="btn btn-primary"> Añadir al carrito </a>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		

		<!--  Colocar el carrito de la compra -->
		<div class="col-3">
			<div class="carrito">
				<img src="img/cart.svg" width="36px">
				<%
				for (ElementoDeCarrito e : ((Carrito) session.getAttribute("carrito")).getElementos()) {
				%>
				<div class="card">
					<img src="img/<%=e.getProducto().getImagen()%>"
						class="card-img-top img-fluid">
					<div class="card-body">
						<%=e.getProducto().getNombre()%><br>
						<%=String.format("%.2f", e.getProducto().getPrecio())%>
						€<br>
						<%=e.getCantidad()%>
						unidades<br> <a
							href="elimina.jsp?codigo=<%=e.getProducto().getCodigo()%>"
							class="btn btn-warning text-white"> Eliminar </a>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>