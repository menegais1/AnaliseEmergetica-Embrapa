package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Lv2p3;

public class Lv2p3DAO {

    public void inserir(Lv2p3 lv2p3) throws Exception {

        String sql = "INSERT INTO lv2p3(\n"
                + "terneiros_quant, terneiros_valor, terneiras_quant, terneiras_valor, \n"
                + "novilhas_quant, novilhas_valor, vacas_de_descarte_quant, vacas_de_descarte_valor, \n"
                + "vaca_prenha_quant, vaca_prenha_valor, vaca_com_cria_quant, vaca_com_cria_valor, \n"
                + "vaca_gorda_quant, vaca_gorda_valor, novilho_pra_recria_quant, \n"
                + "novilho_pra_recria_valor, novilho_gordo_quant, novilho_gordo_valor, \n"
                + "torunos_quant, torunos_valor, touro_quant, touro_valor, propriedade_id,ano)\n"
                + "VALUES (\n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, ?, ?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setInt(1, lv2p3.getTerneiroquant());
            pst.setDouble(2, lv2p3.getTerneirovalor());
            pst.setInt(3, lv2p3.getTerneiraquant());
            pst.setDouble(4, lv2p3.getTerneiravalor());
            pst.setInt(5, lv2p3.getNovilhaquant());
            pst.setDouble(6, lv2p3.getNovilhavalor());
            pst.setInt(7, lv2p3.getVacadedescartequant());
            pst.setDouble(8, lv2p3.getVacadedescartevalor());
            pst.setInt(9, lv2p3.getVacaprenhasquant());
            pst.setDouble(10, lv2p3.getVacaprenhavalor());
            pst.setInt(11, lv2p3.getVacacomcriaquant());
            pst.setDouble(12, lv2p3.getVacacomcriavalor());
            pst.setInt(13, lv2p3.getVacagordaquant());
            pst.setDouble(14, lv2p3.getVacagordavalor());
            pst.setInt(15, lv2p3.getNovilhorecriaquant());
            pst.setDouble(16, lv2p3.getNovilhorecriavalor());
            pst.setInt(17, lv2p3.getNovilhogordoquant());
            pst.setDouble(18, lv2p3.getNovilhavalor());
            pst.setInt(19, lv2p3.getTorunosquant());
            pst.setDouble(20, lv2p3.getTorunovalor());
            pst.setInt(21, lv2p3.getTouroquant());
            pst.setDouble(22, lv2p3.getTourovalor());
            pst.setLong(23, lv2p3.getPropriedade_id());
            pst.setString(24, lv2p3.getAno());
            pst.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Erro");
        }

    }

    public void excluir(Lv2p3 lv2p3) throws Exception {

        String sql = "DELETE FROM lv2p3 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv2p3.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }
    
     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv2p3 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public void atualizar(Lv2p3 lv2p3) throws Exception {
        String sql = "UPDATE lv2p3 SET terneiros_quant=?,terneiros_valor=?,terneiras_quant=?,terneiras_valor=?,"
                + "novilhas_quant=?,novilhas_valor=?,vacas_de_descarte_quant=?,vacas_de_descarte_valor=?,"
                + "vaca_prenha_quant=?,vaca_prenha_valor=?,vaca_com_cria_quant=?,vaca_com_cria_valor=?,vaca_gorda_quant=?,"
                + "vaca_gorda_valor=?,novilho_pra_recria_quant=?,novilho_pra_recria_valor=?,novilho_gordo_quant=?,"
                + "novilho_gordo_valor=?,torunos_quant=?,torunos_valor=?,touro_quant=?, touro_valor=?,propriedade_id=?, ano=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setInt(1, lv2p3.getTerneiroquant());
            pst.setDouble(2, lv2p3.getTerneirovalor());
            pst.setInt(3, lv2p3.getTerneiraquant());
            pst.setDouble(4, lv2p3.getTerneiravalor());
            pst.setInt(5, lv2p3.getNovilhaquant());
            pst.setDouble(6, lv2p3.getNovilhavalor());
            pst.setInt(7, lv2p3.getVacadedescartequant());
            pst.setDouble(8, lv2p3.getVacadedescartevalor());
            pst.setInt(9, lv2p3.getVacaprenhasquant());
            pst.setDouble(10, lv2p3.getVacaprenhavalor());
            pst.setInt(11, lv2p3.getVacacomcriaquant());
            pst.setDouble(12, lv2p3.getVacacomcriavalor());
            pst.setInt(13, lv2p3.getVacagordaquant());
            pst.setDouble(14, lv2p3.getVacagordavalor());
            pst.setInt(15, lv2p3.getNovilhorecriaquant());
            pst.setDouble(16, lv2p3.getNovilhorecriavalor());
            pst.setInt(17, lv2p3.getNovilhogordoquant());
            pst.setDouble(18, lv2p3.getNovilhavalor());
            pst.setInt(19, lv2p3.getTorunosquant());
            pst.setDouble(20, lv2p3.getTorunovalor());
            pst.setInt(21, lv2p3.getTouroquant());
            pst.setDouble(22, lv2p3.getTourovalor());
            pst.setLong(23, lv2p3.getPropriedade_id());
            pst.setString(24, lv2p3.getAno());
            pst.setInt(25, lv2p3.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Lv2p3> listar() throws Exception {

        List<Lv2p3> lista = new ArrayList();
        String sql = "SELECT * FROM lv2p3";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv2p3 lv2p3 = new Lv2p3();

                lv2p3.setTerneiroquant(res.getInt("terneiros_quant"));
                lv2p3.setTerneirovalor(res.getDouble("terneiros_valor"));

                lv2p3.setTerneiraquant(res.getInt("terneiras_quant"));
                lv2p3.setTerneiravalor(res.getDouble("terneiras_valor"));

                lv2p3.setNovilhaquant(res.getInt("novilhas_quant"));
                lv2p3.setNovilhavalor(res.getDouble("novilhas_valor"));

                lv2p3.setVacadedescartequant(res.getInt("vacas_de_descarte_quant"));
                lv2p3.setVacadedescartevalor(res.getDouble("vacas_de_descarte_valor"));

                lv2p3.setVacaprenhasquant(res.getInt("vaca_prenha_quant"));
                lv2p3.setVacacomcriavalor(res.getDouble("vaca_prenha_valor"));

                lv2p3.setVacacomcriaquant(res.getInt("vaca_com_cria_quant"));
                lv2p3.setVacacomcriavalor(res.getDouble("vaca_com_cria_valor"));

                lv2p3.setVacagordaquant(res.getInt("vaca_gorda_quant"));
                lv2p3.setVacagordavalor(res.getDouble("vaca_gorda_valor"));

                lv2p3.setNovilhorecriaquant(res.getInt("novilho_pra_recria_quant"));
                lv2p3.setNovilhorecriavalor(res.getDouble("novilho_pra_recria_valor"));

                lv2p3.setNovilhogordoquant(res.getInt("novilho_gordo_quant"));
                lv2p3.setNovilhogordovalor(res.getDouble("novilho_gordo_valor"));

                lv2p3.setTorunosquant(res.getInt("torunos_quant"));
                lv2p3.setTorunovalor(res.getDouble("torunos_valor"));

                lv2p3.setTouroquant(res.getInt("touro_quant"));
                lv2p3.setTourovalor(res.getDouble("touro_valor"));

                lv2p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p3.setAno(res.getString("ano"));
                lv2p3.setId(res.getInt("id"));
                lista.add(lv2p3);
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lista;
    }

    public Lv2p3 buscar(Integer id) throws Exception {

        Lv2p3 lv2p3 = new Lv2p3();
        String sql = "SELECT * FROM lv2p3 WHERE id=?";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();
            if (res.next()) {

                lv2p3.setTerneiroquant(res.getInt("terneiros_quant"));
                lv2p3.setTerneirovalor(res.getDouble("terneiros_valor"));

                lv2p3.setTerneiraquant(res.getInt("terneiras_quant"));
                lv2p3.setTerneiravalor(res.getDouble("terneiras_valor"));

                lv2p3.setNovilhaquant(res.getInt("novilhas_quant"));
                lv2p3.setNovilhavalor(res.getDouble("novilhas_valor"));

                lv2p3.setVacadedescartequant(res.getInt("vacas_de_descarte_quant"));
                lv2p3.setVacadedescartevalor(res.getDouble("vacas_de_descarte_valor"));

                lv2p3.setVacaprenhasquant(res.getInt("vaca_prenha_quant"));
                lv2p3.setVacaprenhavalor(res.getDouble("vaca_prenha_valor"));

                lv2p3.setVacacomcriaquant(res.getInt("vaca_com_cria_quant"));
                lv2p3.setVacacomcriavalor(res.getDouble("vaca_com_cria_valor"));

                lv2p3.setVacagordaquant(res.getInt("vaca_gorda_quant"));
                lv2p3.setVacagordavalor(res.getDouble("vaca_gorda_valor"));

                lv2p3.setNovilhorecriaquant(res.getInt("novilho_pra_recria_quant"));
                lv2p3.setNovilhorecriavalor(res.getDouble("novilho_pra_recria_valor"));

                lv2p3.setNovilhogordoquant(res.getInt("novilho_gordo_quant"));
                lv2p3.setNovilhogordovalor(res.getDouble("novilho_gordo_valor"));

                lv2p3.setTorunosquant(res.getInt("torunos_quant"));
                lv2p3.setTorunovalor(res.getDouble("torunos_valor"));

                lv2p3.setTouroquant(res.getInt("touro_quant"));
                lv2p3.setTourovalor(res.getDouble("touro_valor"));

                lv2p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p3.setAno(res.getString("ano"));
                lv2p3.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lv2p3;
    }
    
    public Lv2p3 buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv2p3 lv2p3 = null;
        String sql = "SELECT * FROM lv2p3 WHERE propriedade_id=? AND ano=?";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv2p3 = new Lv2p3();
                lv2p3.setTerneiroquant(res.getInt("terneiros_quant"));
                lv2p3.setTerneirovalor(res.getDouble("terneiros_valor"));

                lv2p3.setTerneiraquant(res.getInt("terneiras_quant"));
                lv2p3.setTerneiravalor(res.getDouble("terneiras_valor"));

                lv2p3.setNovilhaquant(res.getInt("novilhas_quant"));
                lv2p3.setNovilhavalor(res.getDouble("novilhas_valor"));

                lv2p3.setVacadedescartequant(res.getInt("vacas_de_descarte_quant"));
                lv2p3.setVacadedescartevalor(res.getDouble("vacas_de_descarte_valor"));

                lv2p3.setVacaprenhasquant(res.getInt("vaca_prenha_quant"));
                lv2p3.setVacaprenhavalor(res.getDouble("vaca_prenha_valor"));

                lv2p3.setVacacomcriaquant(res.getInt("vaca_com_cria_quant"));
                lv2p3.setVacacomcriavalor(res.getDouble("vaca_com_cria_valor"));

                lv2p3.setVacagordaquant(res.getInt("vaca_gorda_quant"));
                lv2p3.setVacagordavalor(res.getDouble("vaca_gorda_valor"));

                lv2p3.setNovilhorecriaquant(res.getInt("novilho_pra_recria_quant"));
                lv2p3.setNovilhorecriavalor(res.getDouble("novilho_pra_recria_valor"));

                lv2p3.setNovilhogordoquant(res.getInt("novilho_gordo_quant"));
                lv2p3.setNovilhogordovalor(res.getDouble("novilho_gordo_valor"));

                lv2p3.setTorunosquant(res.getInt("torunos_quant"));
                lv2p3.setTorunovalor(res.getDouble("torunos_valor"));

                lv2p3.setTouroquant(res.getInt("touro_quant"));
                lv2p3.setTourovalor(res.getDouble("touro_valor"));

                lv2p3.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p3.setAno(res.getString("ano"));
                lv2p3.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lv2p3;
    }
    
}
