package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Lv1Resultado;

public class Lv1ResultadoDAO {

    public void inserir(Lv1Resultado lv1resultado) throws Exception {

        String sql = "INSERT INTO lv1resultado (custohectar,lotacaomedia,receitahectar,totalcustoproducao,ano,propriedade_id)"
                + "VALUES (?,?,?,?,?,?)";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            pst.setDouble(1, lv1resultado.getCustohectar());
            pst.setDouble(2, lv1resultado.getLotacaomedia());
            pst.setDouble(3, lv1resultado.getReceitahectar());
            pst.setDouble(4, lv1resultado.getTotalcustoproducao());
            pst.setString(5, lv1resultado.getAno());
            pst.setLong(6, lv1resultado.getPropriedade_id());

            pst.executeUpdate();

        } catch (Exception ex) {
            System.out.println("Erro");

        }

    }

    public void excluir(Lv1Resultado lv1resultado) throws Exception {

        String sql = "DELETE FROM lv1resultado where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setInt(1, lv1resultado.getId());

            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public void excluirPorPropriedade(Long id) throws Exception {
        String sql = "DELETE FROM lv1resultado where propriedade_id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            pst.setLong(1, id);

            pst.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
    }

    public List<Lv1Resultado> listar() throws Exception {

        List<Lv1Resultado> lista = new ArrayList();
        String sql = "SELECT * FROM lv1resultado";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            ResultSet res = pst.executeQuery();

            while (res.next()) {
                Lv1Resultado a = new Lv1Resultado();
                a.setId(res.getInt("id"));
                a.setCustohectar(res.getDouble("custohectar"));
                a.setLotacaomedia(res.getDouble("lotacaomedia"));
                a.setReceitahectar(res.getDouble("receitahectar"));
                a.setTotalcustoproducao(res.getDouble("totalcustoproducao"));
                a.setAno(res.getString("ano"));
                a.setPropriedade_id(res.getLong("propriedade_id"));
                lista.add(a);
            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lista;
    }

    public Lv1Resultado buscarPorPropriedade(Long id,Integer ano) throws Exception {

        Lv1Resultado lv1resultado = null;
        String sql = "SELECT * FROM lv1resultado WHERE propriedade_id = ? AND ano=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setLong(1, id);
            pst.setString(2,ano.toString());
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1resultado = new Lv1Resultado();
                lv1resultado.setId(res.getInt("id"));
                lv1resultado.setCustohectar(res.getDouble("custohectar"));
                lv1resultado.setLotacaomedia(res.getDouble("lotacaomedia"));
                lv1resultado.setReceitahectar(res.getDouble("receitahectar"));
                lv1resultado.setTotalcustoproducao(res.getDouble("totalcustoproducao"));
                lv1resultado.setAno(res.getString("ano"));
                lv1resultado.setPropriedade_id(res.getLong("propriedade_id"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1resultado;
    }

    public Lv1Resultado buscar(Integer id) throws Exception {

        Lv1Resultado lv1resultado = new Lv1Resultado();
        String sql = "SELECT * FROM lv1resultado WHERE id = ?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {

            pst.setInt(1, id);
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1resultado.setId(res.getInt("id"));
                lv1resultado.setCustohectar(res.getDouble("custohectar"));
                lv1resultado.setLotacaomedia(res.getDouble("lotacaomedia"));
                lv1resultado.setReceitahectar(res.getDouble("receitahectar"));
                lv1resultado.setTotalcustoproducao(res.getDouble("totalcustoproducao"));
                lv1resultado.setAno(res.getString("ano"));
                lv1resultado.setPropriedade_id(res.getLong("propriedade_id"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1resultado;
    }

    public void atualizar(Lv1Resultado lv1resultado) throws Exception {
        String sql = "UPDATE lv1resultado set ano=?,custohectar=?,lotacaomedia=?,receitahectar=?,totalcustoproducao=?,propriedade_id=? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {

            pst.setString(1, lv1resultado.getAno());
            pst.setDouble(2, lv1resultado.getCustohectar());
            pst.setDouble(3, lv1resultado.getLotacaomedia());
            pst.setDouble(4, lv1resultado.getReceitahectar());
            pst.setDouble(5, lv1resultado.getTotalcustoproducao());
            pst.setLong(6, lv1resultado.getPropriedade_id());
            pst.setInt(7, lv1resultado.getId());
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println("Erro");
        }

    }

    public Lv1Resultado media() throws Exception {

        Lv1Resultado lv1resultadomedia = null;

        String sql = "select \n"
                + "	ROUND(avg(totalcustoproducao),2) as totalcustoproducao, \n"
                + "	ROUND(avg(lotacaomedia),2) as lotacaomedia,\n"
                + "	ROUND(avg(receitahectar),2) as receitahectar,\n"
                + "	ROUND(avg(custohectar),2) as custohectar\n"
                + "  from lv1resultado";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);

        try {
            
          
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                lv1resultadomedia = new Lv1Resultado();
                lv1resultadomedia.setTotalcustoproducao(res.getDouble("totalcustoproducao"));
                lv1resultadomedia.setLotacaomedia(res.getDouble("lotacaomedia"));
                lv1resultadomedia.setReceitahectar(res.getDouble("receitahectar"));
                lv1resultadomedia.setCustohectar(res.getDouble("custohectar"));

            }
        } catch (SQLException ex) {
            System.out.println("Erro");
        }
        return lv1resultadomedia;
    }
}
