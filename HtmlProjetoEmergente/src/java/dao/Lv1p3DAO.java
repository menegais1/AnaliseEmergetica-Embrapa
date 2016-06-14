package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv1p3;

public class Lv1p3DAO {

    public void excluir(Lv1p3 lv1p3) throws Exception {
        String sql = "DELETE FROM lv1p3 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv1p3.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }
    
     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv1p3 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public void inserir(Lv1p3 lv1p3) throws Exception {

        String sql = "INSERT INTO lv1p3(receita_anual, propriedade_id, ano)" + "VALUES (?,?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv1p3.getReceita_anual());
            pst.setLong(2, lv1p3.getPropriedade_id());
            pst.setString(3, lv1p3.getAno());

            pst.executeUpdate();

        } catch (Exception ex) {
            System.out.println("Erro");

        }

    }

    public List<Lv1p3> listar() throws Exception {

        List<Lv1p3> lista = new ArrayList();
        String sql = "SELECT * FROM lv1p3";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();
            while (res.next()) {
                Lv1p3 lv1p3 = new Lv1p3();
                lv1p3.setReceita_anual(res.getDouble("receita_anual"));
                lv1p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p3.setAno(res.getString("ano"));
                lista.add(lv1p3);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public void atualizar(Lv1p3 lv1p3) throws Exception {
        
        String sql = "UPDATE lv1p3 set receita_anual=?,ano=?,propriedade_id=? where id=?";
        
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setDouble(1, lv1p3.getReceita_anual());
            pst.setString(2, lv1p3.getAno());
            pst.setLong(3, lv1p3.getPropriedade_id());
            pst.setInt(4, lv1p3.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Lv1p3 buscar(Integer id) throws Exception {

        Lv1p3 lv1p3 = lv1p3 = new Lv1p3();
        String sql = "SELECT * FROM lv1p3 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv1p3.setId(res.getInt("id"));
                lv1p3.setReceita_anual(res.getDouble("receita_anual"));
                lv1p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p3.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p3;
    }

    public Lv1p3 buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv1p3 lv1p3 = null;
        String sql = "SELECT * FROM lv1p3 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv1p3 = new Lv1p3();
                lv1p3.setId(res.getInt("id"));
                lv1p3.setReceita_anual(res.getDouble("receita_anual"));
                lv1p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p3.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p3;
    }
}
