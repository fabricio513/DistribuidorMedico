package conexion;

/**
 *
 * @author edson
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private Connection con;
 
    public Connection getCon() {
        return con;
    }
 
    public void setCon(Connection con) {
        this.con = con;
    }
    public void conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/distribuidormedico", "root", "12345");
        } catch (Exception e) {
            System.out.println("Error al conectar a la base de datos "+e.getMessage());
        }
    }
    public void desconectar(){
        try {
            if(!con.isClosed()){
                con.close();
            }
        } catch (Exception e){
            System.out.println("Error al cerrar la conexion" +e.getMessage());
        }
    } 
}
