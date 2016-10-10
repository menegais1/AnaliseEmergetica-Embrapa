package dao;

import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv2resultado;

public class Lv2resultadoDAO {

    EntityManager em;
    EntityManagerFactory emf;

    public Lv2resultadoDAO() throws Exception {

        emf = Conexao.getConexao();

    }

    public void incluir(Lv2resultado obj) throws Exception {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public void excluirPorAno(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv2resultado l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public void excluirPorPropriedade(Integer id) throws Exception {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv2resultado l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public Lv2resultado buscarPorPropriedade(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();
        List<Lv2resultado> l = em.createNamedQuery("Lv2resultado.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();
        em.close();
        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public Lv2resultado media() throws Exception {
        em = emf.createEntityManager();
        List<Object[]> o = em.createNativeQuery("SELECT AVG(l.areamedia),"
                + "AVG(l.areaaproveitavel),"
                + "AVG(l.percentualrebanhocomcria) ,"
                + "AVG(l.lotacaomedia2),"
                + "AVG(l.totalreceita),"
                + "AVG(l.receitahectar2),"
                + "AVG(l.custotalproducao),"
                + "AVG(l.custoatividadecria1),"
                + "AVG(l.custoproducaohectar1),"
                + "AVG(l.custoterneiro),"
                + "AVG(l.margembruta),"
                + "AVG(l.producaodecarne) FROM Lv2resultado l").getResultList();
        em.close();
        if (o != null && o.get(0)[0] != null) {

            Lv2resultado l = new Lv2resultado();
            l.setAreamedia(new BigDecimal(o.get(0)[0].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setAreaaproveitavel(new BigDecimal(o.get(0)[1].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setPercentualrebanhocomcria(new BigDecimal(o.get(0)[2].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setLotacaomedia2(new BigDecimal(o.get(0)[3].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setTotalreceita(new BigDecimal(o.get(0)[4].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setReceitahectar2(new BigDecimal(o.get(0)[5].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustotalproducao(new BigDecimal(o.get(0)[6].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoatividadecria1(new BigDecimal(o.get(0)[7].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoproducaohectar1(new BigDecimal(o.get(0)[8].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoterneiro(new BigDecimal(o.get(0)[9].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setMargembruta(new BigDecimal(o.get(0)[10].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setProducaodecarne(new BigDecimal(o.get(0)[11].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));

            return l;
        }

        return new Lv2resultado();
    }

    public Lv2resultado media(String filtro) throws Exception {
        em = emf.createEntityManager();
        List<Object[]> o = em.createNativeQuery("SELECT AVG(l.areamedia),"
                + "AVG(l.areaaproveitavel),"
                + "AVG(l.percentualrebanhocomcria) ,"
                + "AVG(l.lotacaomedia2),"
                + "AVG(l.totalreceita),"
                + "AVG(l.receitahectar2),"
                + "AVG(l.custotalproducao),"
                + "AVG(l.custoatividadecria1),"
                + "AVG(l.custoproducaohectar1),"
                + "AVG(l.custoterneiro),"
                + "AVG(l.margembruta),"
                + "AVG(l.producaodecarne) FROM Lv2resultado l where l.areamedia  " + filtro).getResultList();
        em.close();
        if (o != null && o.get(0)[0] != null) {

            Lv2resultado l = new Lv2resultado();
            l.setAreamedia(new BigDecimal(o.get(0)[0].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setAreaaproveitavel(new BigDecimal(o.get(0)[1].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setPercentualrebanhocomcria(new BigDecimal(o.get(0)[2].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setLotacaomedia2(new BigDecimal(o.get(0)[3].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setTotalreceita(new BigDecimal(o.get(0)[4].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setReceitahectar2(new BigDecimal(o.get(0)[5].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustotalproducao(new BigDecimal(o.get(0)[6].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoatividadecria1(new BigDecimal(o.get(0)[7].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoproducaohectar1(new BigDecimal(o.get(0)[8].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setCustoterneiro(new BigDecimal(o.get(0)[9].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setMargembruta(new BigDecimal(o.get(0)[10].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setProducaodecarne(new BigDecimal(o.get(0)[11].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));

            return l;
        }

        return new Lv2resultado();
    }

    public List<Lv2resultado> listar() throws Exception {
        em = emf.createEntityManager();
        List<Lv2resultado> o = em.createNamedQuery("Lv2resultado.findAll").getResultList();
        em.close();
        return o;
    }

    public void alterar(Lv2resultado obj) throws Exception {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }finally{
            em.close();
        }
    }

    public void excluir(Lv2resultado obj) throws Exception {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }finally{
            em.close();
        }
    }

    public Lv2resultado buscarPorChavePrimaria(Integer x) {
        em = emf.createEntityManager();
        Lv2resultado o = em.find(Lv2resultado.class, x);
        em.close();
        return o;
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
