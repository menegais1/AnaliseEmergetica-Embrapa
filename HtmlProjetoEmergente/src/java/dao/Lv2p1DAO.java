package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv2p1;

public class Lv2p1DAO {

    public void inserir(Lv2p1 lv2p1) throws Exception {

        String sql = "INSERT INTO lv2p1 (pastagem_nativa,pastagem_nativa_melhorada,pastagem_cultivada_perene,"
                + "pastagem_anuais_de_inverno,pastagem_anuais_de_verao,agricultura_i,agricultura_v,"
                + "florestas_plantadas,outras_culturas,matas_nativas,sea,inaproveitavel,propriedade_id,ano)"
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv2p1.getPastagemnativa());
            pst.setDouble(2, lv2p1.getPastagemnativamelhorada());
            pst.setDouble(3, lv2p1.getPastagemcultivadaperene());
            pst.setDouble(4, lv2p1.getPastagemanuaisdeinverno());
            pst.setDouble(5, lv2p1.getPastagemanuaisdeverao());
            pst.setDouble(6, lv2p1.getAgriculturai());
            pst.setDouble(7, lv2p1.getAgriculturav());
            pst.setDouble(8, lv2p1.getFlorestaplantadas());
            pst.setDouble(9, lv2p1.getOutrasculturas());
            pst.setDouble(10, lv2p1.getMatasnativas());
            pst.setDouble(11, lv2p1.getSea());
            pst.setDouble(12, lv2p1.getInaproveitavel());
            pst.setLong(13, lv2p1.getPropriedade_id());
            pst.setString(14, lv2p1.getAno());

            pst.executeUpdate();

        } catch (Exception ex) {
            System.out.println("Erro");

        }

    }

    public void excluir(Lv2p1 lv2p1) throws Exception {
        String sql = "DELETE FROM lv2p1 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv2p1.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");

        }

    }
    
     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv2p1 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public List<Lv2p1> listar() throws Exception {

        List<Lv2p1> lista = new ArrayList();
        String sql = "SELECT * FROM lv2p1";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv2p1 lv2p1 = new Lv2p1();
                lv2p1.setId(res.getInt("id"));
                lv2p1.setPastagemnativa(res.getDouble("pastagem_nativa"));
                lv2p1.setPastagemnativamelhorada(res.getDouble("pastagem_nativa_melhorada"));
                lv2p1.setPastagemcultivadaperene(res.getDouble("pastagem_cultivada_perene"));
                lv2p1.setPastagemanuaisdeinverno(res.getDouble("pastagem_anuais_de_inverno"));
                lv2p1.setPastagemanuaisdeverao(res.getDouble("pastagem_anuais_de_verao"));
                lv2p1.setAgriculturai(res.getDouble("agricultura_i"));
                lv2p1.setAgriculturav(res.getDouble("agricultura_v"));
                lv2p1.setFlorestaplantadas(res.getDouble("floresta_plantadas"));
                lv2p1.setOutrasculturas(res.getDouble("outras_culturas"));
                lv2p1.setMatasnativas(res.getDouble("matas_nativas"));
                lv2p1.setSea(res.getDouble("sea"));
                lv2p1.setInaproveitavel(res.getDouble("inaproveitavel"));
                lv2p1.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p1.setAno(res.getString("ano"));
                lista.add(lv2p1);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public void atualizar(Lv2p1 lv2p1) throws Exception {

        String sql = "UPDATE lv2p1 SET pastagem_nativa =?,pastagem_nativa_melhorada=?,pastagem_cultivada_perene=?,"
                + "pastagem_anuais_de_inverno=?,pastagem_anuais_de_verao=?,agricultura_i=?,agricultura_v=?,"
                + "florestas_plantadas=?,outras_culturas=?,matas_nativas=?,sea=?,inaproveitavel=?,propriedade_id=?,ano=? WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setDouble(1, lv2p1.getPastagemnativa());
            pst.setDouble(2, lv2p1.getPastagemnativamelhorada());
            pst.setDouble(3, lv2p1.getPastagemcultivadaperene());
            pst.setDouble(4, lv2p1.getPastagemanuaisdeinverno());
            pst.setDouble(5, lv2p1.getPastagemanuaisdeverao());
            pst.setDouble(6, lv2p1.getAgriculturai());
            pst.setDouble(7, lv2p1.getAgriculturav());
            pst.setDouble(8, lv2p1.getFlorestaplantadas());
            pst.setDouble(9, lv2p1.getOutrasculturas());
            pst.setDouble(10, lv2p1.getMatasnativas());
            pst.setDouble(11, lv2p1.getSea());
            pst.setDouble(12, lv2p1.getInaproveitavel());
            pst.setLong(13, lv2p1.getPropriedade_id());
            pst.setString(14, lv2p1.getAno());
            pst.setInt(15, lv2p1.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Lv2p1 buscar(Integer id) throws Exception {

        Lv2p1 lv2p1 = new Lv2p1();
        String sql = "SELECT * FROM lv2p1 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            if (res.next()) {

                lv2p1.setId(res.getInt("id"));
                lv2p1.setPastagemnativa(res.getDouble("pastagem_nativa"));
                lv2p1.setPastagemnativamelhorada(res.getDouble("pastagem_nativa_melhorada"));
                lv2p1.setPastagemcultivadaperene(res.getDouble("pastagem_cultivada_perene"));
                lv2p1.setPastagemanuaisdeinverno(res.getDouble("pastagem_anuais_de_inverno"));
                lv2p1.setPastagemanuaisdeverao(res.getDouble("pastagem_anuais_de_verao"));
                lv2p1.setAgriculturai(res.getDouble("agricultura_i"));
                lv2p1.setAgriculturav(res.getDouble("agricultura_v"));
                lv2p1.setFlorestaplantadas(res.getDouble("florestas_plantadas"));
                lv2p1.setOutrasculturas(res.getDouble("outras_culturas"));
                lv2p1.setMatasnativas(res.getDouble("matas_nativas"));
                lv2p1.setSea(res.getDouble("sea"));
                lv2p1.setInaproveitavel(res.getDouble("inaproveitavel"));
                lv2p1.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p1.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2p1;
    }
    
     public Lv2p1 buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv2p1 lv2p1 = null;
        String sql = "SELECT * FROM lv2p1 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv2p1 = new Lv2p1();
                lv2p1.setId(res.getInt("id"));
                lv2p1.setPastagemnativa(res.getDouble("pastagem_nativa"));
                lv2p1.setPastagemnativamelhorada(res.getDouble("pastagem_nativa_melhorada"));
                lv2p1.setPastagemcultivadaperene(res.getDouble("pastagem_cultivada_perene"));
                lv2p1.setPastagemanuaisdeinverno(res.getDouble("pastagem_anuais_de_inverno"));
                lv2p1.setPastagemanuaisdeverao(res.getDouble("pastagem_anuais_de_verao"));
                lv2p1.setAgriculturai(res.getDouble("agricultura_i"));
                lv2p1.setAgriculturav(res.getDouble("agricultura_v"));
                lv2p1.setFlorestaplantadas(res.getDouble("florestas_plantadas"));
                lv2p1.setOutrasculturas(res.getDouble("outras_culturas"));
                lv2p1.setMatasnativas(res.getDouble("matas_nativas"));
                lv2p1.setSea(res.getDouble("sea"));
                lv2p1.setInaproveitavel(res.getDouble("inaproveitavel"));
                lv2p1.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p1.setAno(res.getString("ano"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2p1;
    }
}
