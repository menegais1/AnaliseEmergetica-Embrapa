package dao;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv1resultado;

public class Lv1resultadoDAO {

    EntityManager em;
    EntityManager emexcluir;
    EntityManagerFactory emf;

    public Lv1resultadoDAO() throws Exception {

        emf = Conexao.getConexao();
    }

    public void incluir(Lv1resultado obj) throws Exception {
        em = emf.createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }finally{
            em.close();
        }

    }

    public void excluirPorAno(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();

        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv1resultado l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public void excluirPorPropriedade(Integer id) throws Exception {
        em = emf.createEntityManager();

        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv1resultado l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public Lv1resultado media() throws Exception {
        em = emf.createEntityManager();

        List<Object[]> o = em.createNativeQuery("SELECT AVG(l.custohectar),"
                + " AVG(l.lotacaomedia),"
                + " AVG(l.receitahectar) ,"
                + " AVG(l.margembruta) FROM Lv1resultado l").getResultList();
        em.close();
        if (o != null && o.get(0)[0] != null) {

            Lv1resultado l = new Lv1resultado();
            l.setCustohectar(new BigDecimal(o.get(0)[0].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setLotacaomedia(new BigDecimal(o.get(0)[1].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setReceitahectar(new BigDecimal(o.get(0)[2].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setMargembruta(new BigDecimal(o.get(0)[3].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            return l;
        }

        return new Lv1resultado();
    }

    public Lv1resultado media(String filtro) throws Exception {
        em = emf.createEntityManager();

        List<Object[]> o = em.createNativeQuery("SELECT AVG(l.custohectar),"
                + " AVG(l.lotacaomedia),"
                + " AVG(l.receitahectar) , "
                + " AVG(l.margembruta) FROM Lv1resultado l Join Propriedade p on l.propriedade_id = p.id join lv1p1 lv1 on lv1.propriedade_id = p.id where lv1.area_apro " + filtro).getResultList();
        em.close();
        if (o != null && o.get(0)[0] != null) {

            Lv1resultado l = new Lv1resultado();
            l.setCustohectar(new BigDecimal(o.get(0)[0].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setLotacaomedia(new BigDecimal(o.get(0)[1].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setReceitahectar(new BigDecimal(o.get(0)[2].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            l.setMargembruta(new BigDecimal(o.get(0)[3].toString()).setScale(2, BigDecimal.ROUND_HALF_UP));
            return l;
        }

        return new Lv1resultado();
    }

    public Lv1resultado buscarPorPropriedade(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();

        List<Lv1resultado> l = em.createNamedQuery("Lv1resultado.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();
        em.close();
        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv1resultado> listar() throws Exception {
        em = emf.createEntityManager();

        List<Lv1resultado> o = em.createNamedQuery("Lv1resultado.findAll").getResultList();
        em.close();
        return o;
    }

    public void alterar(Lv1resultado obj) throws Exception {
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

    public void excluir(Lv1resultado obj) throws Exception {
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

    public Lv1resultado buscarPorChavePrimaria(Integer x) {
        em = emf.createEntityManager();

        Lv1resultado o = em.find(Lv1resultado.class, x);
        em.close();
        return o;
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
