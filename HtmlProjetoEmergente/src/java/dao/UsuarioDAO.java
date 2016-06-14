package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;

public class UsuarioDAO {

    public void inserir(Usuario usuario) throws Exception {

        String sql = "INSERT INTO usuario (login,senha,email)"
                + "VALUES (?,?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setString(1, usuario.getLogin());
            pst.setString(2, usuario.getSenha());
            pst.setString(3, usuario.getEmail());
            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluir(Usuario usuario) throws Exception {

        String sql = "DELETE FROM usuario WHERE id = ?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, usuario.getId());

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Usuario> listar() throws Exception {

        List<Usuario> lista = new ArrayList();
        String sql = "SELECT * FROM usuario";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();
            while (res.next()) {
                Usuario usuario = new Usuario();
                usuario.setLogin(res.getString("login"));
                usuario.setSenha(res.getString("senha"));
                usuario.setEmail(res.getString("email"));
                usuario.setId(res.getInt("id"));
                lista.add(usuario);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public void redefinirSenha(Usuario usuario) throws Exception {
        Boolean retorno = false;
        String sql = "UPDATE usuario set senha=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setString(1, usuario.getSenha());
            pst.setInt(2, usuario.getId());

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Usuario login(Usuario usuarioE) throws Exception {

        Usuario usuario = null;
        String sql = "SELECT * FROM usuario WHERE login =? AND senha=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setString(1, usuarioE.getLogin());
            pst.setString(2, usuarioE.getSenha());
            ResultSet res = pst.executeQuery();
            while (res.next()) {
                usuario = new Usuario();
                usuario.setLogin(res.getString("login"));
                usuario.setSenha(res.getString("senha"));
                usuario.setEmail(res.getString("email"));
                usuario.setId(res.getInt("id"));

            }

        } catch (SQLException ex) {

            System.out.println("batata");
        }

        return usuario;
    }

    public Usuario buscar(Integer id) throws Exception {

        Usuario usuario = new Usuario();
        String sql = "SELECT * FROM usuario WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, id);

            ResultSet res = pst.executeQuery();

            while (res.next()) {

                usuario.setLogin(res.getString("login"));
                usuario.setSenha(res.getString("senha"));
                usuario.setEmail(res.getString("email"));
                usuario.setId(res.getInt("id"));

            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return usuario;
    }

}
