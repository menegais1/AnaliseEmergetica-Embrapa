package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexao {

//    private static final String banco = "jdbc:postgresql://192.168.0.33:5432/bancofazenda";
    private static final String banco = "jdbc:postgresql://localhost:5432/bancofazenda";

    private static final String driver = "org.postgresql.Driver";

//    private static final String usuario = "marcelo";
//    private static final String senha = "siedler@2015";
    private static final String usuario = "postgres";
    private static final String senha = "postgres";

    private static Connection con = null;

    public static Connection getConexao() throws Exception {
        if (con == null) {
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(banco, usuario, senha);

            } catch (ClassNotFoundException ex) {
                System.out.println("Driver não encontrado");
            } catch (SQLException ex) {
                System.out.println("Erro ao conectar" + ex.getMessage());
            }

        }
        return con;

    }

    public static PreparedStatement getPreparedStatement(String sql) throws Exception {
        if (con == null) {
            con = getConexao();
        }

        try {
            return con.prepareStatement(sql);
        } catch (SQLException e) {
            System.out.println("Erro de sql" + e.getMessage());
        }
        return null;
    }
}
