package clases;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	// corchete raro en el try 
	{ try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establecer la conexion

			String url = "jbdc:mysql://localhost:3306/partes";
			String usuario = "root";
			String pass = "root";

			// Crear la conexion

			Connection conexion = null;
			try {
				conexion = DriverManager.getConnection(url, usuario, pass);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("conexion establecida");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Driver No Cargado");
			e.printStackTrace();
		}
	}
	
	Conexion establecerConexion() {
		Conexion conexionEstablecida = new Conexion ();
		return conexionEstablecida;
	}
}
