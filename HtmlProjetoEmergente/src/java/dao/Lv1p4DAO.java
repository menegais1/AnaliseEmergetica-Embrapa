package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv1p4;

public class Lv1p4DAO {

    public void excluir(Lv1p4 lv1p4) throws Exception {
        String sql = "DELETE FROM lv1p4 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv1p4.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }
    
     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv1p4 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public void inserir(Lv1p4 lv1p4) throws Exception {

        String sql = "INSERT INTO lv1p4("
                + "            medicamento, mao_de_obra, maquinas, pastagem, propriedade_id, "
                + "            ano, outros)"
                + "    VALUES (?, ?, ?, ?, ?,"
                + "            ?, ?)";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv1p4.getMedicamento());
            pst.setDouble(2, lv1p4.getMao_de_obra());
            pst.setDouble(3, lv1p4.getMaquinas());
            pst.setDouble(4, lv1p4.getPastagem());
            pst.setLong(5, lv1p4.getPropriedade_id());
            pst.setString(6, lv1p4.getAno());
            pst.setDouble(7, lv1p4.getOutros());

            pst.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Erro");
        }

    }

    public List<Lv1p4> listar() throws Exception {

        List<Lv1p4> lista = new ArrayList();
        String sql = "SELECT * FROM lv1p4";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();
            while (res.next()) {
                Lv1p4 lv1p4 = new Lv1p4();
                lv1p4.setMedicamento(res.getDouble("medicamento"));
                lv1p4.setMao_de_obra(res.getDouble("mao_de_obra"));
                lv1p4.setMaquinas(res.getDouble("maquinas"));
                lv1p4.setPastagem(res.getDouble("pastagem"));
                lv1p4.setOutros(res.getDouble("outros"));
                lv1p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p4.setAno(res.getString("ano"));

                lista.add(lv1p4);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public void atualizar(Lv1p4 lv1p4) throws Exception {
        String sql = "UPDATE lv1p4 set medicamento =?,mao_de_obra=?,maquinas=?,pastagem=?,outros =?,ano =?,propriedade_id=?  where id=? ";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setDouble(1, lv1p4.getMedicamento());
            pst.setDouble(2, lv1p4.getMao_de_obra());
            pst.setDouble(3, lv1p4.getMaquinas());
            pst.setDouble(4, lv1p4.getPastagem());
            pst.setDouble(5, lv1p4.getOutros());
            pst.setString(6, lv1p4.getAno());
            pst.setLong(7, lv1p4.getPropriedade_id());
            pst.setInt(8, lv1p4.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Lv1p4 buscar(Integer id) throws Exception {

        Lv1p4 lv1p4 = new Lv1p4();
        String sql = "SELECT * FROM lv1p4 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();
            if (res.next()) {

                lv1p4.setId(res.getInt("id"));
                lv1p4.setMedicamento(res.getDouble("medicamento"));
                lv1p4.setMao_de_obra(res.getDouble("mao_de_obra"));
                lv1p4.setMaquinas(res.getDouble("maquinas"));
                lv1p4.setPastagem(res.getDouble("pastagem"));
                lv1p4.setOutros(res.getDouble("outros"));
                lv1p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p4.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p4;
    }
    
    public Lv1p4 buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv1p4 lv1p4 = null;
        String sql = "SELECT * FROM lv1p4 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv1p4 = new Lv1p4();
                lv1p4.setId(res.getInt("id"));
                lv1p4.setMedicamento(res.getDouble("medicamento"));
                lv1p4.setMao_de_obra(res.getDouble("mao_de_obra"));
                lv1p4.setMaquinas(res.getDouble("maquinas"));
                lv1p4.setPastagem(res.getDouble("pastagem"));
                lv1p4.setOutros(res.getDouble("outros"));
                lv1p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv1p4.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1p4;
    }

}
