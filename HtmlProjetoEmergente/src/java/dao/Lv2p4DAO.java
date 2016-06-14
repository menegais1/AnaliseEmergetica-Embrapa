package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv2p4;

public class Lv2p4DAO {

    public void excluir(Lv2p4 lv2p4) throws Exception {
        String sql = "DELETE FROM lv2p4 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv2p4.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }
    
     public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv2p4 where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public void inserir(Lv2p4 lv2p4) throws Exception {

        String sql = "INSERT INTO lv2p4("
                + "            medicamento, carrapaticidas, sal, racao, compra_de_bovinos,"
                + "            untensilios_de_uso_geral, semem, mao_de_obra_fixa, mao_de_obra_variavel,"
                + "            semente, defensivos_agri_para_pastagem, adubos_para_pastagem,"
                + "            combustivel, reparos_de_maquina, reparo_de_benfeitorias, frete,"
                + "            arrendamentos_de_campo_nativo, arrendamentos_de_pastagem_cultivada,"
                + "            impostos, outras_despesas, propriedade_id,ano)"
                + "    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?,?)";

        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv2p4.getMedicamento());
            pst.setDouble(2, lv2p4.getCarrapaticida());
            pst.setDouble(3, lv2p4.getSal());
            pst.setDouble(4, lv2p4.getRacao());
            pst.setDouble(5, lv2p4.getCompradebovinos());
            pst.setDouble(6, lv2p4.getUntesilosdeusogeral());
            pst.setDouble(7, lv2p4.getSemem());
            pst.setDouble(8, lv2p4.getMaodeobrafixa());
            pst.setDouble(9, lv2p4.getMaodeobravariavel());
            pst.setDouble(10, lv2p4.getSemem());
            pst.setDouble(11, lv2p4.getDefensivoagriparapastagem());
            pst.setDouble(12, lv2p4.getAdubosparapastagem());
            pst.setDouble(13, lv2p4.getCombustivel());
            pst.setDouble(14, lv2p4.getReparosmaquina());
            pst.setDouble(15, lv2p4.getReparobanfeitoria());
            pst.setDouble(16, lv2p4.getFrete());
            pst.setDouble(17, lv2p4.getArrendamentocamponativo());
            pst.setDouble(18, lv2p4.getArrendamentopastagemcultivada());
            pst.setDouble(19, lv2p4.getImposto());
            pst.setDouble(20, lv2p4.getOutradespesas());
            pst.setLong(21, lv2p4.getPropriedade_id());
            pst.setString(22, lv2p4.getAno());

            pst.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Erro");
        }

    }

    public void atualizar(Lv2p4 lv2p4) throws Exception {
        String sql = "UPDATE lv2p4 SET "
                + "    medicamento=?, carrapaticidas=?, sal=?, racao=?, compra_de_bovinos=?, "
                + "       untensilios_de_uso_geral=?, semem=?, mao_de_obra_fixa=?, mao_de_obra_variavel=?,"
                + "       semente=?, defensivos_agri_para_pastagem=?, adubos_para_pastagem=?,"
                + "       combustivel=?, reparos_de_maquina=?, reparo_de_benfeitorias=?, "
                + "       frete=?, arrendamentos_de_campo_nativo=?, arrendamentos_de_pastagem_cultivada=?,"
                + "       impostos=?, outras_despesas=?, propriedade_id=?, ano=?"
                + " WHERE  id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setDouble(1, lv2p4.getMedicamento());
            pst.setDouble(2, lv2p4.getCarrapaticida());
            pst.setDouble(3, lv2p4.getSal());
            pst.setDouble(4, lv2p4.getRacao());
            pst.setDouble(5, lv2p4.getCompradebovinos());
            pst.setDouble(6, lv2p4.getUntesilosdeusogeral());
            pst.setDouble(7, lv2p4.getSemem());
            pst.setDouble(8, lv2p4.getMaodeobrafixa());
            pst.setDouble(9, lv2p4.getMaodeobravariavel());
            pst.setDouble(10, lv2p4.getSemem());
            pst.setDouble(11, lv2p4.getDefensivoagriparapastagem());
            pst.setDouble(12, lv2p4.getAdubosparapastagem());
            pst.setDouble(13, lv2p4.getCombustivel());
            pst.setDouble(14, lv2p4.getReparosmaquina());
            pst.setDouble(15, lv2p4.getReparobanfeitoria());
            pst.setDouble(16, lv2p4.getFrete());
            pst.setDouble(17, lv2p4.getArrendamentocamponativo());
            pst.setDouble(18, lv2p4.getArrendamentopastagemcultivada());
            pst.setDouble(19, lv2p4.getImposto());
            pst.setDouble(20, lv2p4.getOutradespesas());
            pst.setLong(21, lv2p4.getPropriedade_id());
            pst.setString(22, lv2p4.getAno());
            pst.setInt(23, lv2p4.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public List<Lv2p4> listar() throws Exception {

        List<Lv2p4> lista = new ArrayList();
        String sql = "SELECT * FROM lv2p4";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv2p4 lv2p4 = new Lv2p4();
                lv2p4.setId(res.getInt("id"));
                lv2p4.setMedicamento(res.getDouble("medicamento"));
                lv2p4.setCarrapaticida(res.getDouble("carrapaticidas"));
                lv2p4.setSal(res.getDouble("sal"));
                lv2p4.setRacao(res.getDouble("racao"));
                lv2p4.setCompradebovinos(res.getDouble("compra_de_bovinos"));
                lv2p4.setUntesilosdeusogeral(res.getDouble("untensilios_de_uso_geral"));
                lv2p4.setSemem(res.getDouble("semem"));
                lv2p4.setMaodeobrafixa(res.getDouble("mao_de_obra_fixa"));
                lv2p4.setMaodeobravariavel(res.getDouble("mao_de_obra_variavel"));
                lv2p4.setSemente(res.getDouble("semente"));
                lv2p4.setDefensivoagriparapastagem(res.getDouble("defensivos_agri_para_pastagem"));
                lv2p4.setAdubosparapastagem(res.getDouble("adubos_para_pastagem"));
                lv2p4.setCombustivel(res.getDouble("combustivel"));
                lv2p4.setReparosmaquina(res.getDouble("reparos_de_maquina"));
                lv2p4.setReparobanfeitoria(res.getDouble("reparo_de_benfeitorias"));
                lv2p4.setFrete(res.getDouble("frete"));
                lv2p4.setArrendamentocamponativo(res.getDouble("arrendamentos_de_campo_nativo"));
                lv2p4.setArrendamentopastagemcultivada(res.getDouble("arrendamentos_de_pastagem_cultivada"));
                lv2p4.setImposto(res.getDouble("impostos"));
                lv2p4.setOutradespesas(res.getDouble("outras_despesas"));
                lv2p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p4.setAno(res.getString("ano"));

                lista.add(lv2p4);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public Lv2p4 buscar(Integer id) throws Exception {

        Lv2p4 lv2p4 = new Lv2p4();
        String sql = "SELECT * FROM lv2p4 WHERE id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1,id);
            ResultSet res = pst.executeQuery();
            if (res.next()) {

                lv2p4.setMedicamento(res.getDouble("medicamento"));
                lv2p4.setCarrapaticida(res.getDouble("carrapaticidas"));
                lv2p4.setSal(res.getDouble("sal"));
                lv2p4.setRacao(res.getDouble("racao"));
                lv2p4.setCompradebovinos(res.getDouble("compra_de_bovinos"));
                lv2p4.setUntesilosdeusogeral(res.getDouble("untensilios_de_uso_geral"));
                lv2p4.setSemem(res.getDouble("semem"));
                lv2p4.setMaodeobrafixa(res.getDouble("mao_de_obra_fixa"));
                lv2p4.setMaodeobravariavel(res.getDouble("mao_de_obra_variavel"));
                lv2p4.setSemente(res.getDouble("semente"));
                lv2p4.setDefensivoagriparapastagem(res.getDouble("defensivos_agri_para_pastagem"));
                lv2p4.setAdubosparapastagem(res.getDouble("adubos_para_pastagem"));
                lv2p4.setCombustivel(res.getDouble("combustivel"));
                lv2p4.setReparosmaquina(res.getDouble("reparos_de_maquina"));
                lv2p4.setReparobanfeitoria(res.getDouble("reparo_de_benfeitorias"));
                lv2p4.setFrete(res.getDouble("frete"));
                lv2p4.setArrendamentocamponativo(res.getDouble("arrendamentos_de_campo_nativo"));
                lv2p4.setArrendamentopastagemcultivada(res.getDouble("arrendamentos_de_pastagem_cultivada"));
                lv2p4.setImposto(res.getDouble("impostos"));
                lv2p4.setOutradespesas(res.getDouble("outras_despesas"));
                lv2p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p4.setAno(res.getString("ano"));
                lv2p4.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lv2p4;
    }
    
    public Lv2p4 buscarPorPropriedade(Long id,Integer ano) throws Exception {
        Lv2p4 lv2p4 = null;
        String sql = "SELECT * FROM lv2p4 WHERE propriedade_id=? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2, ano.toString());
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                lv2p4 = new Lv2p4();
                lv2p4.setMedicamento(res.getDouble("medicamento"));
                lv2p4.setCarrapaticida(res.getDouble("carrapaticidas"));
                lv2p4.setSal(res.getDouble("sal"));
                lv2p4.setRacao(res.getDouble("racao"));
                lv2p4.setCompradebovinos(res.getDouble("compra_de_bovinos"));
                lv2p4.setUntesilosdeusogeral(res.getDouble("untensilios_de_uso_geral"));
                lv2p4.setSemem(res.getDouble("semem"));
                lv2p4.setMaodeobrafixa(res.getDouble("mao_de_obra_fixa"));
                lv2p4.setMaodeobravariavel(res.getDouble("mao_de_obra_variavel"));
                lv2p4.setSemente(res.getDouble("semente"));
                lv2p4.setDefensivoagriparapastagem(res.getDouble("defensivos_agri_para_pastagem"));
                lv2p4.setAdubosparapastagem(res.getDouble("adubos_para_pastagem"));
                lv2p4.setCombustivel(res.getDouble("combustivel"));
                lv2p4.setReparosmaquina(res.getDouble("reparos_de_maquina"));
                lv2p4.setReparobanfeitoria(res.getDouble("reparo_de_benfeitorias"));
                lv2p4.setFrete(res.getDouble("frete"));
                lv2p4.setArrendamentocamponativo(res.getDouble("arrendamentos_de_campo_nativo"));
                lv2p4.setArrendamentopastagemcultivada(res.getDouble("arrendamentos_de_pastagem_cultivada"));
                lv2p4.setImposto(res.getDouble("impostos"));
                lv2p4.setOutradespesas(res.getDouble("outras_despesas"));
                lv2p4.setPropriedade_id(res.getLong("propriedade_id"));
                lv2p4.setAno(res.getString("ano"));
                lv2p4.setId(res.getInt("id"));
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lv2p4;
    }
}
