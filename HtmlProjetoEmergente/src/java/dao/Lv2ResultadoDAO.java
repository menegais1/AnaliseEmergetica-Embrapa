package dao;

import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv2resultado;

public class Lv2resultadoDAO {

    EntityManager em;

    public Lv2resultadoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Lv2resultado obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluirPorPropriedade(Integer id) throws Exception {
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv2resultado l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
    }

    public Lv2resultado buscarPorPropriedade(Integer id, String ano) throws Exception {
        List<Lv2resultado> l = em.createNamedQuery("Lv2resultado.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();

        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public Lv2resultado media() throws Exception {
        List<Object[]> o = em.createNativeQuery("SELECT AVG(l.areamedia),"
                + " AVG(l.areaaproveitavel),"
                + " AVG(l.percentualrebanhocomcria) ,"
                + " AVG(l.lotacaomedia2),"
                + "AVG(l.totalreceita),"
                + "AVG(l.receitahectar2),"
                + "AVG(l.custotalproducao),"
                + "AVG(l.custoatividadecria1),"
                + "AVG(l.custoproducaohectar1),"
                + "AVG(l.custoterneiro) FROM Lv2resultado l").getResultList();

        if (!o.isEmpty()) {

            Lv2resultado l = new Lv2resultado();
            l.setAreamedia(BigDecimal.valueOf(Double.parseDouble(o.get(0)[0].toString())));
            l.setAreaaproveitavel(BigDecimal.valueOf(Double.parseDouble(o.get(0)[1].toString())));
            l.setPercentualrebanhocomcria(BigDecimal.valueOf(Double.parseDouble(o.get(0)[2].toString())));
            l.setLotacaomedia2(BigDecimal.valueOf(Double.parseDouble(o.get(0)[3].toString())));
            l.setTotalreceita(BigDecimal.valueOf(Double.parseDouble(o.get(0)[4].toString())));
            l.setReceitahectar2(BigDecimal.valueOf(Double.parseDouble(o.get(0)[5].toString())));
            l.setCustotalproducao(BigDecimal.valueOf(Double.parseDouble(o.get(0)[6].toString())));
            l.setCustoatividadecria1(BigDecimal.valueOf(Double.parseDouble(o.get(0)[7].toString())));
            l.setCustoproducaohectar1(BigDecimal.valueOf(Double.parseDouble(o.get(0)[8].toString())));
            l.setCustoterneiro(BigDecimal.valueOf(Double.parseDouble(o.get(0)[9].toString())));

            return l;
        }

        return null;
    }

    public List<Lv2resultado> listar() throws Exception {
        return em.createNamedQuery("Lv2resultado.findAll").getResultList();
    }

    public void alterar(Lv2resultado obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Lv2resultado obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    public Lv2resultado buscarPorChavePrimaria(Integer x) {
        return em.find(Lv2resultado.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
