package dao;

import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv1resultado;

public class Lv1resultadoDAO {

    EntityManager em;
    EntityManager emexcluir;

    public Lv1resultadoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Lv1resultado obj) throws Exception {
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
        em.createQuery("DELETE FROM Lv1resultado l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();

    }

    public Lv1resultado media() throws Exception {
        List<Object[]> o=em.createNativeQuery("SELECT AVG(l.custohectar),"
                + " AVG(l.lotacaomedia),"
                + " AVG(l.receitahectar) ,"
                + " AVG(l.totalcustoproducao) FROM Lv1resultado l").getResultList();

        if(!o.isEmpty()){
           
            Lv1resultado l = new Lv1resultado();
            l.setCustohectar(BigDecimal.valueOf(Double.parseDouble(o.get(0)[0].toString())));
            l.setLotacaomedia(BigDecimal.valueOf(Double.parseDouble(o.get(0)[1].toString())));
            l.setReceitahectar(BigDecimal.valueOf(Double.parseDouble(o.get(0)[2].toString())));
            l.setTotalcustoproducao(BigDecimal.valueOf(Double.parseDouble(o.get(0)[3].toString())));
            return l;
        }
        
        return null;
    }

    public Lv1resultado buscarPorPropriedade(Integer id, String ano) throws Exception {
        List<Lv1resultado> l = em.createNamedQuery("Lv1resultado.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();

        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv1resultado> listar() throws Exception {
        return em.createNamedQuery("Lv1resultado.findAll").getResultList();
    }

    public void alterar(Lv1resultado obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Lv1resultado obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    public Lv1resultado buscarPorChavePrimaria(Integer x) {
        return em.find(Lv1resultado.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
