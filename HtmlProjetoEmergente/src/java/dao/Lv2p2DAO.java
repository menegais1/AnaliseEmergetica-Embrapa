package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv2p2;

public class Lv2p2DAO {

    public void inserir(Lv2p2 lv2p2) throws Exception {

        String sql = "INSERT INTO lv2p2(\n"
                + "vaca_de_cria_janmar, vaca_de_cria_abrjun, vaca_de_cria_julset, \n"
                + "vaca_de_cria_outdez, vaca_de_descarte_janmar, vaca_de_descarte_abrjun, \n"
                + "vaca_de_descarte_julset, vaca_de_descarte_outdez, terneiros_janmar, \n"
                + "terneiros_abrjun, terneiros_julset, terneiros_outdez, terneiras_janmar, \n"
                + "terneiras_abrjun, terneiras_julset, terneiras_outdez, novilhos_13a24_janmar, \n"
                + "novilhos_13a24_abrjun, novilhos_13a24_julset, novilhos_13a24_outdez, \n"
                + "novilhas_13a24_janmar, novilhas_13a24_abrjun, novilhas_13a24_julset, \n"
                + "novilhas_13a24_outdez, novilhos_25a36_janmar, novilhos_25a36_abrjun, \n"
                + "novilhos_25a36_julset, novilhos_25a36_outdez, novilhas_25a36_janmar, \n"
                + "novilhas_25a36_abrjun, novilhas_25a36_julset, novilhas_25a36_outdez, \n"
                + "novilho_36_janmar, novilho_36_abrjun, novilho_36_julset, novilho_36_outdez, \n"
                + "touro_janmar, touro_abrjun, touro_julset, touro_outdez, propriedade_id,ano)\n"
                + "VALUES (?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, ?, ?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, lv2p2.getVacadecriajanmar());
            pst.setInt(2, lv2p2.getVacadecriaabrjun());
            pst.setInt(3, lv2p2.getVacadecriajulset());
            pst.setInt(4, lv2p2.getVacadecriaoutdez());
            pst.setInt(5, lv2p2.getVacadedescartejanmar());
            pst.setInt(6, lv2p2.getVacadedescarteabrjun());
            pst.setInt(7, lv2p2.getVacadedescartejulset());
            pst.setInt(8, lv2p2.getVacadedescarteoutdez());
            pst.setInt(9, lv2p2.getTerneirosjanmar());
            pst.setInt(10, lv2p2.getTerneirosabrjun());
            pst.setInt(11, lv2p2.getTerneirosjulset());
            pst.setInt(12, lv2p2.getTerneirosoutdez());
            pst.setInt(13, lv2p2.getTerneirasjanmar());
            pst.setInt(14, lv2p2.getTerneirasabrjun());
            pst.setInt(15, lv2p2.getTerneirasjulset());
            pst.setInt(16, lv2p2.getTerneirasoutdez());
            pst.setInt(17, lv2p2.getNovilho1324janmar());
            pst.setInt(18, lv2p2.getNovilho1324abrjun());
            pst.setInt(19, lv2p2.getNovilho1324julset());
            pst.setInt(20, lv2p2.getNovilho1324outdez());
            pst.setInt(21, lv2p2.getNovilha1324janmar());
            pst.setInt(22, lv2p2.getNovilha1324abrjun());
            pst.setInt(23, lv2p2.getNovilha1324julset());
            pst.setInt(24, lv2p2.getNovilha1324outdez());
            pst.setInt(25, lv2p2.getNovilho2536janmar());
            pst.setInt(26, lv2p2.getNovilho2536abrjun());
            pst.setInt(27, lv2p2.getNovilho2536julset());
            pst.setInt(28, lv2p2.getNovilho2536outdez());
            pst.setInt(29, lv2p2.getNovilha2536janmar());
            pst.setInt(30, lv2p2.getNovilha2536abrjun());
            pst.setInt(31, lv2p2.getNovilha2536julset());
            pst.setInt(32, lv2p2.getNovilha2536outdez());
            pst.setInt(33, lv2p2.getNovilho36janmar());
            pst.setInt(34, lv2p2.getNovilho36abrjun());
            pst.setInt(35, lv2p2.getNovilho36julset());
            pst.setInt(36, lv2p2.getNovilho36outdez());
            pst.setInt(37, lv2p2.getTourojanmar());
            pst.setInt(38, lv2p2.getTouroabrjun());
            pst.setInt(39, lv2p2.getTourojulset());
            pst.setInt(40, lv2p2.getTourooutdez());
            pst.setLong(41, lv2p2.getPropriedade_id());
            pst.setString(42, lv2p2.getAno());

            pst.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Erro");
        }

    }

    public void excluir(Lv2p2 lv2p2) throws Exception {
        String sql = "DELETE FROM lv2p2 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv2p2.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv2p2 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public void atualizar(Lv2p2 lv2p2) throws Exception {
        String sql = "UPDATE lv2p2 SET vaca_de_cria_janmar=?,vaca_de_cria_abrjun=?,vaca_de_cria_julset=?,vaca_de_cria_outdez=?,"
                + "vaca_de_descarte_janmar=?,vaca_de_descarte_abrjun=?,vaca_de_descarte_julset=?,vaca_de_descarte_outdez=?,"
                + "terneiros_janmar=?,terneiros_abrjun=?,terneiros_julset=?,terneiros_outdez=?,"
                + "terneiras_janmar=?,terneiras_abrjun=?,terneiras_julset=?,terneiras_outdez=?,"
                + "novilhos_13a24_janmar=?,novilhos_13a24_abrjun=?,novilhos_13a24_julset=?,novilhos_13a24_outdez=?,"
                + "novilhas_13a24_janmar=?,novilhas_13a24_abrjun=?,novilhas_13a24_julset=?,novilhas_13a24_outdez=?,"
                + "novilhos_25a36_janmar=?,novilhos_25a36_abrjun=?,novilhos_25a36_julset=?,novilhos_25a36_outdez=?,"
                + "novilhas_25a36_janmar=?,novilhas_25a36_abrjun=?,novilhas_25a36_julset=?,novilhas_25a36_outdez=?,"
                + "novilho_36_janmar=?,novilho_36_abrjun=?,novilho_36_julset=?,novilho_36_outdez=?,"
                + "touro_janmar=?,touro_abrjun=?,touro_julset=?,touro_outdez=?,propriedade_id=?,ano=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setInt(1, lv2p2.getVacadecriajanmar());
            pst.setInt(2, lv2p2.getVacadecriaabrjun());
            pst.setInt(3, lv2p2.getVacadecriajulset());
            pst.setInt(4, lv2p2.getVacadecriaoutdez());
            pst.setInt(5, lv2p2.getVacadedescartejanmar());
            pst.setInt(6, lv2p2.getVacadedescarteabrjun());
            pst.setInt(7, lv2p2.getVacadedescartejulset());
            pst.setInt(8, lv2p2.getVacadedescarteoutdez());
            pst.setInt(9, lv2p2.getTerneirosjanmar());
            pst.setInt(10, lv2p2.getTerneirosabrjun());
            pst.setInt(11, lv2p2.getTerneirosjulset());
            pst.setInt(12, lv2p2.getTerneirosoutdez());
            pst.setInt(13, lv2p2.getTerneirasjanmar());
            pst.setInt(14, lv2p2.getTerneirasabrjun());
            pst.setInt(15, lv2p2.getTerneirasjulset());
            pst.setInt(16, lv2p2.getTerneirasoutdez());
            pst.setInt(17, lv2p2.getNovilho1324janmar());
            pst.setInt(18, lv2p2.getNovilho1324abrjun());
            pst.setInt(19, lv2p2.getNovilho1324julset());
            pst.setInt(20, lv2p2.getNovilho1324outdez());
            pst.setInt(21, lv2p2.getNovilha1324janmar());
            pst.setInt(22, lv2p2.getNovilha1324abrjun());
            pst.setInt(23, lv2p2.getNovilha1324julset());
            pst.setInt(24, lv2p2.getNovilha1324outdez());
            pst.setInt(25, lv2p2.getNovilho2536janmar());
            pst.setInt(26, lv2p2.getNovilho2536abrjun());
            pst.setInt(27, lv2p2.getNovilho2536julset());
            pst.setInt(28, lv2p2.getNovilho2536outdez());
            pst.setInt(29, lv2p2.getNovilha2536janmar());
            pst.setInt(30, lv2p2.getNovilha2536abrjun());
            pst.setInt(31, lv2p2.getNovilha2536julset());
            pst.setInt(32, lv2p2.getNovilha2536outdez());
            pst.setInt(33, lv2p2.getNovilho36janmar());
            pst.setInt(34, lv2p2.getNovilho36abrjun());
            pst.setInt(35, lv2p2.getNovilho36julset());
            pst.setInt(36, lv2p2.getNovilho36outdez());
            pst.setInt(37, lv2p2.getTourojanmar());
            pst.setInt(38, lv2p2.getTouroabrjun());
            pst.setInt(39, lv2p2.getTourojulset());
            pst.setInt(40, lv2p2.getTourooutdez());
            pst.setLong(41, lv2p2.getPropriedade_id());
            pst.setString(42, lv2p2.getAno());
            pst.setInt(43, lv2p2.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Lv2p2> listar() throws Exception {

        List<Lv2p2> lista = new ArrayList();
        String sql = "SELECT * FROM lv2p2";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv2p2 lv2p2 = new Lv2p2();

                lv2p2.setId(res.getInt("id"));

                lv2p2.setVacadecriajanmar(res.getInt("vaca_de_cria_janmar"));
                lv2p2.setVacadecriaabrjun(res.getInt("vaca_de_cria_abrjun"));
                lv2p2.setVacadecriajulset(res.getInt("vaca_de_cria_julset"));
                lv2p2.setVacadecriaoutdez(res.getInt("vaca_de_cria_outdez"));

                lv2p2.setVacadedescartejanmar(res.getInt("vaca_de_descarte_janmar"));
                lv2p2.setVacadedescarteabrjun(res.getInt("vaca_de_descarte_abrjun"));
                lv2p2.setVacadedescartejulset(res.getInt("vaca_de_descarte_julset"));
                lv2p2.setVacadedescarteoutdez(res.getInt("vaca_de_descarte_outdez"));

                lv2p2.setTerneirosjanmar(res.getInt("terneiros_janmar"));
                lv2p2.setTerneirosabrjun(res.getInt("terneiros_abrjun"));
                lv2p2.setTerneirosjulset(res.getInt("terneiros_julset"));
                lv2p2.setTerneirosoutdez(res.getInt("terneiros_outdez"));

                lv2p2.setTerneirasjanmar(res.getInt("terneiras_janmar"));
                lv2p2.setTerneirasabrjun(res.getInt("terneiras_abrjun"));
                lv2p2.setTerneirasjulset(res.getInt("terneiras_julset"));
                lv2p2.setTerneirasoutdez(res.getInt("terneiras_outdez"));

                lv2p2.setNovilho1324janmar(res.getInt("novilhos_13a24_janmar"));
                lv2p2.setNovilho1324abrjun(res.getInt("novilhos_13a24_abrjun"));
                lv2p2.setNovilho1324julset(res.getInt("novilhos_13a24_julset"));
                lv2p2.setNovilho1324janmar(res.getInt("novilhos_13a24_outdez"));

                lv2p2.setNovilha1324janmar(res.getInt("novilhas_13a24_janmar"));
                lv2p2.setNovilha1324abrjun(res.getInt("novilhas_13a24_abrjun"));
                lv2p2.setNovilha1324julset(res.getInt("novilhas_13a24_julset"));
                lv2p2.setNovilha1324outdez(res.getInt("novilhas_13a24_outdez"));

                lv2p2.setNovilho2536janmar(res.getInt("novilhos_25a36_janmar"));
                lv2p2.setNovilho2536abrjun(res.getInt("novilhos_25a36_abrjun"));
                lv2p2.setNovilho2536julset(res.getInt("novilhos_25a36_julset"));
                lv2p2.setNovilho2536outdez(res.getInt("novilhos_25a36_outdez"));

                lv2p2.setNovilha2536janmar(res.getInt("novilhas_25a36_janmar"));
                lv2p2.setNovilha2536abrjun(res.getInt("novilhas_25a36_abrjun"));
                lv2p2.setNovilha2536julset(res.getInt("novilhas_25a36_julset"));
                lv2p2.setNovilha2536outdez(res.getInt("novilhas_25a36_outdez"));

                lv2p2.setNovilho36janmar(res.getInt("novilho_36_janmar"));
                lv2p2.setNovilho36abrjun(res.getInt("novilho_36_abrjun"));
                lv2p2.setNovilho36julset(res.getInt("novilho_36_julset"));
                lv2p2.setNovilho36outdez(res.getInt("novilho_36_outdez"));

                lv2p2.setTourojanmar(res.getInt("touro_janmar"));
                lv2p2.setTouroabrjun(res.getInt("touro_abrjun"));
                lv2p2.setTourojulset(res.getInt("touro_julset"));
                lv2p2.setTourooutdez(res.getInt("touro_outdez"));

                lv2p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p2.setAno(res.getString("ano"));

                lista.add(lv2p2);
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lista;
    }

    public Lv2p2 buscar(Integer id) throws Exception {

        Lv2p2 lv2p2 = new Lv2p2();
        String sql = "SELECT * FROM lv2p2 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();
            if (res.next()) {

                lv2p2.setVacadecriajanmar(res.getInt("vaca_de_cria_janmar"));
                lv2p2.setVacadecriaabrjun(res.getInt("vaca_de_cria_abrjun"));
                lv2p2.setVacadecriajulset(res.getInt("vaca_de_cria_julset"));
                lv2p2.setVacadecriaoutdez(res.getInt("vaca_de_cria_outdez"));

                lv2p2.setVacadedescartejanmar(res.getInt("vaca_de_descarte_janmar"));
                lv2p2.setVacadedescarteabrjun(res.getInt("vaca_de_descarte_abrjun"));
                lv2p2.setVacadedescartejulset(res.getInt("vaca_de_descarte_julset"));
                lv2p2.setVacadedescarteoutdez(res.getInt("vaca_de_descarte_outdez"));

                lv2p2.setTerneirosjanmar(res.getInt("terneiros_janmar"));
                lv2p2.setTerneirosabrjun(res.getInt("terneiros_abrjun"));
                lv2p2.setTerneirosjulset(res.getInt("terneiros_julset"));
                lv2p2.setTerneirosoutdez(res.getInt("terneiros_outdez"));

                lv2p2.setTerneirasjanmar(res.getInt("terneiras_janmar"));
                lv2p2.setTerneirasabrjun(res.getInt("terneiras_abrjun"));
                lv2p2.setTerneirasjulset(res.getInt("terneiras_julset"));
                lv2p2.setTerneirasoutdez(res.getInt("terneiras_outdez"));

                lv2p2.setNovilho1324janmar(res.getInt("novilhos_13a24_janmar"));
                lv2p2.setNovilho1324abrjun(res.getInt("novilhos_13a24_abrjun"));
                lv2p2.setNovilho1324julset(res.getInt("novilhos_13a24_julset"));
                lv2p2.setNovilho1324outdez(res.getInt("novilhos_13a24_outdez"));

                lv2p2.setNovilha1324janmar(res.getInt("novilhas_13a24_janmar"));
                lv2p2.setNovilha1324abrjun(res.getInt("novilhas_13a24_abrjun"));
                lv2p2.setNovilha1324julset(res.getInt("novilhas_13a24_julset"));
                lv2p2.setNovilha1324outdez(res.getInt("novilhas_13a24_outdez"));

                lv2p2.setNovilho2536janmar(res.getInt("novilhos_25a36_janmar"));
                lv2p2.setNovilho2536abrjun(res.getInt("novilhos_25a36_abrjun"));
                lv2p2.setNovilho2536julset(res.getInt("novilhos_25a36_julset"));
                lv2p2.setNovilho2536outdez(res.getInt("novilhos_25a36_outdez"));

                lv2p2.setNovilha2536janmar(res.getInt("novilhas_25a36_janmar"));
                lv2p2.setNovilha2536abrjun(res.getInt("novilhas_25a36_abrjun"));
                lv2p2.setNovilha2536julset(res.getInt("novilhas_25a36_julset"));
                lv2p2.setNovilha2536outdez(res.getInt("novilhas_25a36_outdez"));

                lv2p2.setNovilho36janmar(res.getInt("novilho_36_janmar"));
                lv2p2.setNovilho36abrjun(res.getInt("novilho_36_abrjun"));
                lv2p2.setNovilho36julset(res.getInt("novilho_36_julset"));
                lv2p2.setNovilho36outdez(res.getInt("novilho_36_outdez"));

                lv2p2.setTourojanmar(res.getInt("touro_janmar"));
                lv2p2.setTouroabrjun(res.getInt("touro_abrjun"));
                lv2p2.setTourojulset(res.getInt("touro_julset"));
                lv2p2.setTourooutdez(res.getInt("touro_outdez"));

                lv2p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p2.setAno(res.getString("ano"));
                lv2p2.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2p2;
    }

    public Lv2p2 buscarPorPropriedade(Long id, Integer ano) throws Exception {

        Lv2p2 lv2p2 = null;
        String sql = "SELECT * FROM lv2p2 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2, ano.toString());
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv2p2 = new Lv2p2();
                lv2p2.setVacadecriajanmar(res.getInt("vaca_de_cria_janmar"));
                lv2p2.setVacadecriaabrjun(res.getInt("vaca_de_cria_abrjun"));
                lv2p2.setVacadecriajulset(res.getInt("vaca_de_cria_julset"));
                lv2p2.setVacadecriaoutdez(res.getInt("vaca_de_cria_outdez"));

                lv2p2.setVacadedescartejanmar(res.getInt("vaca_de_descarte_janmar"));
                lv2p2.setVacadedescarteabrjun(res.getInt("vaca_de_descarte_abrjun"));
                lv2p2.setVacadedescartejulset(res.getInt("vaca_de_descarte_julset"));
                lv2p2.setVacadedescarteoutdez(res.getInt("vaca_de_descarte_outdez"));

                lv2p2.setTerneirosjanmar(res.getInt("terneiros_janmar"));
                lv2p2.setTerneirosabrjun(res.getInt("terneiros_abrjun"));
                lv2p2.setTerneirosjulset(res.getInt("terneiros_julset"));
                lv2p2.setTerneirosoutdez(res.getInt("terneiros_outdez"));

                lv2p2.setTerneirasjanmar(res.getInt("terneiras_janmar"));
                lv2p2.setTerneirasabrjun(res.getInt("terneiras_abrjun"));
                lv2p2.setTerneirasjulset(res.getInt("terneiras_julset"));
                lv2p2.setTerneirasoutdez(res.getInt("terneiras_outdez"));

                lv2p2.setNovilho1324janmar(res.getInt("novilhos_13a24_janmar"));
                lv2p2.setNovilho1324abrjun(res.getInt("novilhos_13a24_abrjun"));
                lv2p2.setNovilho1324julset(res.getInt("novilhos_13a24_julset"));
                lv2p2.setNovilho1324outdez(res.getInt("novilhos_13a24_outdez"));

                lv2p2.setNovilha1324janmar(res.getInt("novilhas_13a24_janmar"));
                lv2p2.setNovilha1324abrjun(res.getInt("novilhas_13a24_abrjun"));
                lv2p2.setNovilha1324julset(res.getInt("novilhas_13a24_julset"));
                lv2p2.setNovilha1324outdez(res.getInt("novilhas_13a24_outdez"));

                lv2p2.setNovilho2536janmar(res.getInt("novilhos_25a36_janmar"));
                lv2p2.setNovilho2536abrjun(res.getInt("novilhos_25a36_abrjun"));
                lv2p2.setNovilho2536julset(res.getInt("novilhos_25a36_julset"));
                lv2p2.setNovilho2536outdez(res.getInt("novilhos_25a36_outdez"));

                lv2p2.setNovilha2536janmar(res.getInt("novilhas_25a36_janmar"));
                lv2p2.setNovilha2536abrjun(res.getInt("novilhas_25a36_abrjun"));
                lv2p2.setNovilha2536julset(res.getInt("novilhas_25a36_julset"));
                lv2p2.setNovilha2536outdez(res.getInt("novilhas_25a36_outdez"));

                lv2p2.setNovilho36janmar(res.getInt("novilho_36_janmar"));
                lv2p2.setNovilho36abrjun(res.getInt("novilho_36_abrjun"));
                lv2p2.setNovilho36julset(res.getInt("novilho_36_julset"));
                lv2p2.setNovilho36outdez(res.getInt("novilho_36_outdez"));

                lv2p2.setTourojanmar(res.getInt("touro_janmar"));
                lv2p2.setTouroabrjun(res.getInt("touro_abrjun"));
                lv2p2.setTourojulset(res.getInt("touro_julset"));
                lv2p2.setTourooutdez(res.getInt("touro_outdez"));

                lv2p2.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p2.setAno(res.getString("ano"));
                lv2p2.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2p2;
    }

}
