/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author edson
 */
        
public class LoginDao {
    private Conexion c;
    public LoginDao(Conexion conexion) { 
        this.c = conexion;
    }
    public boolean verificarCredenciales(String usuario, String password) {
        boolean valido = false;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = c.getCon();
            String sql = "SELECT * FROM personas WHERE usuario = ? AND password = ? ";
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                valido = true; // Las credenciales son válidas
            }
        } catch (SQLException e) {
            System.out.println("Error al verificar credenciales: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar recursos: " + e.getMessage());
            }
        }
        return valido;
    }
}
