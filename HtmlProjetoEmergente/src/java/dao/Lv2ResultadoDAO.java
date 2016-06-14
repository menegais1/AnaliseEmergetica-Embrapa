package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv2Resultado;

public class Lv2ResultadoDAO {

    public void inserir(Lv2Resultado lv2resultado) throws Exception {

        String sql = "INSERT INTO lv2resultado(\n"
                + "areamedia, areaaproveitavel, percentualrebanhocomcria, lotacaomedia2, \n"
                + "totalreceita, receitahectar2, custotalproducao, custoatividadecria1, \n"
                + "custoproducaohectar1, custoterneiro, ano, propriedade_id)\n"
                + "VALUES (?, ?, ?, ?, \n"
                + "?, ?, ?, ?, \n"
                + "?, ?, ?, ?);";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv2resultado.getAreamedia());
            pst.setDouble(2, lv2resultado.getAreaaproveitavel());
            pst.setDouble(3, lv2resultado.getPercentualrebanhocomcria());
            pst.setDouble(4, lv2resultado.getLotacaomedia2());
            pst.setDouble(5, lv2resultado.getTotalreceita());
            pst.setDouble(6, lv2resultado.getReceitahectar2());
            pst.setDouble(7, lv2resultado.getCustotalproducao());
            pst.setDouble(8, lv2resultado.getCustoatividadecria1());
            pst.setDouble(9, lv2resultado.getCustoproducaohectar1());
            pst.setDouble(10, lv2resultado.getCustoterneiro());
            pst.setString(11, lv2resultado.getAno());
            pst.setLong(12, lv2resultado.getPropriedade_id());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluir(Lv2Resultado lv2resultado) throws Exception {

        String sql = "DELETE FROM lv1resultado where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv2resultado.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv2resultado where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public List<Lv2Resultado> listar() throws Exception {

        List<Lv2Resultado> lista = new ArrayList();
        String sql = "SELECT * FROM lv2resultado";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv2Resultado a = new Lv2Resultado();
                a.setId(res.getInt("id"));
                a.setAreaaproveitavel(res.getDouble("areaaproveitavel"));
                a.setAreamedia(res.getDouble("areamedia"));
                a.setCustoatividadecria1(res.getDouble("custoatividadecria1"));
                a.setCustoproducaohectar1(res.getDouble("custoproducaohectar1"));
                a.setCustotalproducao(res.getDouble("custototalproducao"));
                a.setCustoterneiro(res.getDouble("custoterneiro"));
                a.setLotacaomedia2(res.getDouble("lotacaomedia2"));
                a.setPercentualrebanhocomcria(res.getDouble("percentualrebanhocomcria"));
                a.setReceitahectar2(res.getDouble("receitahectar2"));
                a.setTotalreceita(res.getDouble("totalreceita"));
                a.setAno(res.getString("ano"));
                a.setPropriedade_id(res.getLong("propriedade_id"));
                lista.add(a);
            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lista;
    }

    public Lv2Resultado buscar(Integer id) throws Exception {

        Lv2Resultado lv2resultado = new Lv2Resultado();
        String sql = "SELECT * FROM lv2resultado WHERE id = ?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv2resultado.setId(res.getInt("id"));
                lv2resultado.setAreaaproveitavel(res.getDouble("areaaproveitavel"));
                lv2resultado.setAreamedia(res.getDouble("areamedia"));
                lv2resultado.setCustoatividadecria1(res.getDouble("custoatividadecria1"));
                lv2resultado.setCustoproducaohectar1(res.getDouble("custoproducaohectar1"));
                lv2resultado.setCustotalproducao(res.getDouble("custototalproducao"));
                lv2resultado.setCustoterneiro(res.getDouble("custoterneiro"));
                lv2resultado.setLotacaomedia2(res.getDouble("lotacaomedia2"));
                lv2resultado.setPercentualrebanhocomcria(res.getDouble("percentualrebanhocomcria"));
                lv2resultado.setReceitahectar2(res.getDouble("receitahectar2"));
                lv2resultado.setTotalreceita(res.getDouble("totalreceita"));
                lv2resultado.setAno(res.getString("ano"));
                lv2resultado.setPropriedade_id(res.getLong("propriedade_id"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2resultado;
    }

    public Lv2Resultado buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv2Resultado lv2resultado = null;
        String sql = "SELECT * FROM lv2resultado WHERE propriedade_id =? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2, ano.toString());
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv2resultado = new Lv2Resultado();
                lv2resultado.setId(res.getInt("id"));
                lv2resultado.setAreaaproveitavel(res.getDouble("areaaproveitavel"));
                lv2resultado.setAreamedia(res.getDouble("areamedia"));
                lv2resultado.setCustoatividadecria1(res.getDouble("custoatividadecria1"));
                lv2resultado.setCustoproducaohectar1(res.getDouble("custoproducaohectar1"));
                lv2resultado.setCustotalproducao(res.getDouble("custotalproducao"));
                lv2resultado.setCustoterneiro(res.getDouble("custoterneiro"));
                lv2resultado.setLotacaomedia2(res.getDouble("lotacaomedia2"));
                lv2resultado.setPercentualrebanhocomcria(res.getDouble("percentualrebanhocomcria"));
                lv2resultado.setReceitahectar2(res.getDouble("receitahectar2"));
                lv2resultado.setTotalreceita(res.getDouble("totalreceita"));
                lv2resultado.setAno(res.getString("ano"));
                lv2resultado.setPropriedade_id(res.getLong("propriedade_id"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv2resultado;
    }

    public Lv2Resultado media() throws Exception {

        Lv2Resultado lv2resultado = null;
        String sql = "SELECT ROUND(avg(areamedia),2) as areamedia, \n"
                + "	ROUND(avg(areaaproveitavel),2) as  areaaproveitavel,\n"
                + "	ROUND(avg(percentualrebanhocomcria),2) as  percentualrebanhocomcria,\n"
                + "	ROUND(avg(lotacaomedia2),2) as  lotacaomedia2,\n"
                + "       ROUND(avg(totalreceita),2) as  totalreceita,\n"
                + "       ROUND(avg(receitahectar2),2) as  receitahectar2,\n"
                + "       ROUND(avg(custotalproducao),2) as  custotalproducao,\n"
                + "       ROUND(avg(custoatividadecria1),2) as custoatividadecria1,\n"
                + "       ROUND(avg(custoproducaohectar1),2) as custoproducaohectar1,\n"
                + "       ROUND(avg(custoterneiro),2) as custoterneiro\n"
                + "  FROM lv2resultado;";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv2resultado = new Lv2Resultado();
                lv2resultado.setAreamedia(res.getDouble("areamedia"));
                lv2resultado.setAreaaproveitavel(res.getDouble("areaaproveitavel"));
                lv2resultado.setPercentualrebanhocomcria(res.getDouble("percentualrebanhocomcria"));
                lv2resultado.setLotacaomedia2(res.getDouble("lotacaomedia2"));
                lv2resultado.setTotalreceita(res.getDouble("totalreceita"));
                lv2resultado.setReceitahectar2(res.getDouble("receitahectar2"));
                lv2resultado.setCustotalproducao(res.getDouble("custotalproducao"));
                lv2resultado.setCustoatividadecria1(res.getDouble("custoatividadecria1"));
                lv2resultado.setCustoproducaohectar1(res.getDouble("custoproducaohectar1"));
                lv2resultado.setCustoterneiro(res.getDouble("custoterneiro"));

            }
        } catch (SQLException ex) {

            System.out.println("Erro");
        }
        return lv2resultado;
    }

    public void atualizar(Lv2Resultado lv2resultado) throws Exception {
        String sql = "UPDATE lv2resultado\n"
                + "SET areamedia=?, areaaproveitavel=?, percentualrebanhocomcria=?, \n"
                + "lotacaomedia2=?, totalreceita=?, receitahectar2=?, custotalproducao=?, \n"
                + "custoatividadecria1=?, custoproducaohectar1=?, custoterneiro=?, \n"
                + "ano=?, propriedade_id=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setDouble(1, lv2resultado.getAreamedia());
            pst.setDouble(2, lv2resultado.getAreaaproveitavel());
            pst.setDouble(3, lv2resultado.getPercentualrebanhocomcria());
            pst.setDouble(4, lv2resultado.getLotacaomedia2());
            pst.setDouble(5, lv2resultado.getTotalreceita());
            pst.setDouble(6, lv2resultado.getReceitahectar2());
            pst.setDouble(7, lv2resultado.getCustotalproducao());
            pst.setDouble(8, lv2resultado.getCustoatividadecria1());
            pst.setDouble(9, lv2resultado.getCustoproducaohectar1());
            pst.setDouble(10, lv2resultado.getCustoterneiro());
            pst.setString(11, lv2resultado.getAno());
            pst.setLong(12, lv2resultado.getPropriedade_id());
            pst.setInt(13, lv2resultado.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }
}
