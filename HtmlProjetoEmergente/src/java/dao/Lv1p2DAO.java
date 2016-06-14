package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Lv1p2;

public class Lv1p2DAO {

    public void excluir(Lv1p2 lv1p2) throws Exception {
        String sql = "DELETE FROM lv1p2 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv1p2.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv1p2 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }
     
    public void inserir(Lv1p2 lv1p2) throws Exception {

        String sql = "INSERT INTO lv1p2("
                + "vaca_de_cria,"
                + "vaca_de_descarte,"
                + "terneiro,"
                + "terneira,"
                + "novilho_13a24,"
                + "novilha_13a24,"
                + "novilho_25a36,"
                + "novilha_25a36,"
                + "novilho_36,"
                + "novilha_36,"
                + "touro,"
                + "ano,"
                + "propriedade_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, lv1p2.getVacadecria());
            pst.setInt(2, lv1p2.getVacadedescarte());
            pst.setInt(3, lv1p2.getTerneiro());
            pst.setInt(4, lv1p2.getTerneira());
            pst.setInt(5, lv1p2.getNovilho1324());
            pst.setInt(6, lv1p2.getNovilha1324());
            pst.setInt(7, lv1p2.getNovilho2536());
            pst.setInt(8, lv1p2.getNovilha2536());
            pst.setInt(9, lv1p2.getNovilho36());
            pst.setInt(10, lv1p2.getNovilha36());
            pst.setInt(11, lv1p2.getTouro());
            pst.setString(12, lv1p2.getAno());
            pst.setLong(13, lv1p2.getPropriedade_id());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Lv1p2> listar() throws Exception {

        List<Lv1p2> lista = new ArrayList();
        String sql = "SELECT * FROM lv1p2";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();
            while (res.next()) {
                Lv1p2 lv1p2 = new Lv1p2();
                lv1p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p2.setVacadecria(res.getInt("vaca_de_cria"));
                lv1p2.setVacadedescarte(res.getInt("vaca_de_descarte"));
                lv1p2.setTerneiro(res.getInt("terneiro"));
                lv1p2.setTerneira(res.getInt("terneira"));
                lv1p2.setNovilho1324(res.getInt("novilho_13a24"));
                lv1p2.setNovilha1324(res.getInt("novilha_13a24"));
                lv1p2.setNovilho2536(res.getInt("novilho_25a36"));
                lv1p2.setNovilha2536(res.getInt("novilha_25a36"));
                lv1p2.setNovilho36(res.getInt("novilho_36"));
                lv1p2.setNovilha36(res.getInt("novilha_36"));
                lv1p2.setTouro(res.getInt("touro"));
                lv1p2.setAno(res.getString("ano"));
                lista.add(lv1p2);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public void atualizar(Lv1p2 lv1p2) throws Exception {
        String sql = "UPDATE lv1p2 SET vaca_de_cria=?, vaca_de_descarte=?, terneiro=?, terneira=?,novilho_13a24=?, "
                + "novilha_13a24=?, novilho_25a36=?, novilha_25a36=?,novilho_36=?, touro=?,novilha_36=?, ano=?,propriedade_id=? "
                + "WHERE id=?;";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setInt(1, lv1p2.getVacadecria());
            pst.setInt(2, lv1p2.getVacadedescarte());
            pst.setInt(3, lv1p2.getTerneiro());
            pst.setInt(4, lv1p2.getTerneira());
            pst.setInt(5, lv1p2.getNovilho1324());
            pst.setInt(6, lv1p2.getNovilha1324());
            pst.setInt(7, lv1p2.getNovilho2536());
            pst.setInt(8, lv1p2.getNovilha2536());
            pst.setInt(9, lv1p2.getNovilho36());
            pst.setInt(10, lv1p2.getTouro());
            pst.setInt(11, lv1p2.getNovilha36());
            pst.setString(12, lv1p2.getAno());
            pst.setLong(13, lv1p2.getPropriedade_id());
            pst.setInt(14, lv1p2.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Lv1p2 buscar(Integer id) throws Exception {

        Lv1p2 lv1p2 = new Lv1p2();
        String sql = "SELECT * FROM lv1p2 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1p2.setId(res.getInt("id"));
                lv1p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p2.setVacadecria(res.getInt("vaca_de_cria"));
                lv1p2.setVacadedescarte(res.getInt("vaca_de_descarte"));
                lv1p2.setTerneiro(res.getInt("terneiro"));
                lv1p2.setTerneira(res.getInt("terneira"));
                lv1p2.setNovilho1324(res.getInt("novilho_13a24"));
                lv1p2.setNovilha1324(res.getInt("novilha_13a24"));
                lv1p2.setNovilho2536(res.getInt("novilho_25a36"));
                lv1p2.setNovilha2536(res.getInt("novilha_25a36"));
                lv1p2.setNovilho36(res.getInt("novilho_36"));
                lv1p2.setNovilha36(res.getInt("novilha_36"));
                lv1p2.setTouro(res.getInt("touro"));
                lv1p2.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p2;
    }

    public Lv1p2 buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv1p2 lv1p2 = null;
        String sql = "SELECT * FROM lv1p2 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1p2 = new Lv1p2();
                lv1p2.setId(res.getInt("id"));
                lv1p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p2.setVacadecria(res.getInt("vaca_de_cria"));
                lv1p2.setVacadedescarte(res.getInt("vaca_de_descarte"));
                lv1p2.setTerneiro(res.getInt("terneiro"));
                lv1p2.setTerneira(res.getInt("terneira"));
                lv1p2.setNovilho1324(res.getInt("novilho_13a24"));
                lv1p2.setNovilha1324(res.getInt("novilha_13a24"));
                lv1p2.setNovilho2536(res.getInt("novilho_25a36"));
                lv1p2.setNovilha2536(res.getInt("novilha_25a36"));
                lv1p2.setNovilho36(res.getInt("novilho_36"));
                lv1p2.setNovilha36(res.getInt("novilha_36"));
                lv1p2.setTouro(res.getInt("touro"));
                lv1p2.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p2;
    }
    
}
