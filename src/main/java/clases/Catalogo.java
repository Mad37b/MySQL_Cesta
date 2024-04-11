package clases;

import java.util.ArrayList;
import java.util.List;

public class Catalogo {

	// lista de productos en el catalogo
	ArrayList<Producto> productos = new ArrayList<>();

	public void cargarDatos() {

		// metemos 8 datos
		
		productos.clear();
		/** 1 **/ productos.add(new Producto(1, "Curso java", 10, "java.png"));
		/** 2 **/ productos.add(new Producto(2, "Curso Aeromodelismo", 20, "avion.jpg"));
		/** 3 **/ productos.add(new Producto(3, "Curso Motor grafico", 30, "motorGrafico.png"));
		/** 4 **/ productos.add(new Producto(4, "Curso CSS", 40, "CSS.jpg"));
		/** 5 **/ productos.add(new Producto(5, "Curso historia", 50, "historia.jpg"));
		/** 6 **/ productos.add(new Producto(6, "Curso Arte", 60, "Arte.png"));

	}
	// metemos 8 datos
	public  ArrayList<Producto> getProductos() {
		
		return productos;
	}

	public Producto productoConCodigo(int codigo) {
		for (Producto productos : productos) {
			if (productos.getCodigo() == codigo) {
				return productos;
			}
		}
		return null;
	}
	
}
