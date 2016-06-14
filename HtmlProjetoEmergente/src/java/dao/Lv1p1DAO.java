package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv1p1;

public class Lv1p1DAO {

    public void inserir(Lv1p1 lv1p1) throws Exception {

        String sql = "INSERT INTO lv1p1 (area_apro,ano,propriedade_id)"
                + "VALUES (?,?,?)";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv1p1.getArea_apro());
            pst.setString(2, lv1p1.getAno());
            pst.setLong(3, lv1p1.getPropriedade_id());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("ERRO");

        }

    }

    public void excluir(Lv1p1 lv1p1) throws SQLException, Exception {
        String sql = "DELETE FROM lv1p1 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv1p1.getId());

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv1p1 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public List<Lv1p1> listar() throws Exception {

        List<Lv1p1> lista = new ArrayList();
        String sql = "SELECT * FROM lv1p1";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv1p1 lv1p1 = new Lv1p1();
                lv1p1.setId(res.getInt("id"));
                lv1p1.setArea_apro(res.getDouble("area_apro"));
                lv1p1.setAno(res.getString("ano"));
                lv1p1.setPropriedade_id(res.getLong("propriedade_id"));
                lista.add(lv1p1);
            }
        } catch (SQLException ex) {
            System.out.println("ERRO");
        }
        return lista;
    }

    public Lv1p1 buscar(Integer id) throws Exception {

        String sql = "SELECT * FROM lv1p1 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        Lv1p1 lv1p1 = new Lv1p1();
        try {
            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            if (res.next()) {

                lv1p1.setId(res.getInt("id"));
                lv1p1.setArea_apro(res.getDouble("area_apro"));
                lv1p1.setAno(res.getString("ano"));
                lv1p1.setPropriedade_id(res.getLong("propriedade_id"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p1;
    }

    public Lv1p1 buscarPorPropriedade(Long id, Integer ano) throws Exception {
        
        String sql = "SELECT * FROM lv1p1 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        Lv1p1 lv1p1 = null;
        try {
            pst.setLong(1, id);
            pst.setString(2, ano.toString());
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1p1 = new Lv1p1();
                lv1p1.setArea_apro(res.getDouble("area_apro"));
                lv1p1.setAno(res.getString("ano"));
                lv1p1.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p1.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p1;
    }

    public void atualizar(Lv1p1 lv1p1) throws Exception {
        String sql = "UPDATE lv1p1 set ano=?,area_apro =?, propriedade_id =? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setString(1, lv1p1.getAno());
            pst.setDouble(2, lv1p1.getArea_apro());
            pst.setLong(3, lv1p1.getPropriedade_id());
            pst.setInt(4, lv1p1.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

}
