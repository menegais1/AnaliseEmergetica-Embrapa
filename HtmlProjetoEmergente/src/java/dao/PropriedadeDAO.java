package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Propriedade;
import modelo.Usuario;

public class PropriedadeDAO {

    public void inserir(Propriedade propriedade) throws Exception {

        String sql = "INSERT INTO propriedade (nome,cidade,uf,usuario_id)"
                + "VALUES (?,?,?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setString(1, propriedade.getNome());
            pst.setString(2, propriedade.getCidade());
            pst.setString(3, propriedade.getUf());
            pst.setInt(4, propriedade.getUsuario_id());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluir(Propriedade propriedade) throws Exception {

        String sql = "DELETE FROM propriedade WHERE id = ?";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, propriedade.getId());

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Propriedade> listar() throws Exception {

        List<Propriedade> lista = new ArrayList();
        String sql = "SELECT * FROM propriedade ";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Propriedade propriedade = new Propriedade();
                propriedade.setNome(res.getString("nome"));
                propriedade.setCidade(res.getString("cidade"));
                propriedade.setUf(res.getString("uf"));
                propriedade.setUsuario_id(res.getInt("usuario_id"));
                propriedade.setId(res.getInt("id"));
                lista.add(propriedade);
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lista;
    }

    public List<Propriedade> listarPropriedadePorUsuario(Integer id) throws Exception {

        List<Propriedade> lista = new ArrayList();
        String sql = "SELECT * FROM propriedade WHERE usuario_id =? ";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Propriedade propriedade = new Propriedade();
                propriedade.setNome(res.getString("nome"));
                propriedade.setCidade(res.getString("cidade"));
                propriedade.setUf(res.getString("uf"));
                propriedade.setUsuario_id(res.getInt("usuario_id"));
                propriedade.setId(res.getInt("id"));
                lista.add(propriedade);
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lista;
    }

    public void atualizar(Propriedade propriedade) throws Exception {
        String sql = "UPDATE propriedade set nome=?,endereco=?,uf=?,usuario_id=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setString(1, propriedade.getNome());
            pst.setString(2, propriedade.getCidade());
            pst.setString(3, propriedade.getUf());
            pst.setInt(4, propriedade.getUsuario_id());
            pst.setInt(5, propriedade.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Propriedade buscar(Integer id) throws Exception {

        Propriedade propriedade = new Propriedade();
        String sql = "SELECT * FROM propriedade WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            while (res.next()) {

                propriedade.setNome(res.getString("nome"));
                propriedade.setCidade(res.getString("cidade"));
                propriedade.setUf(res.getString("uf"));
                propriedade.setUsuario_id(res.getInt("usuario_id"));
                propriedade.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return propriedade;
    }

}
