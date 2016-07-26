package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv2p4;

public class Lv2p4DAO {

    EntityManager em;

    public Lv2p4DAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Lv2p4 obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }

    }

    public void excluirPorAno(Integer id, String ano) throws Exception {
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv2p4 l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
    }
    
    public void excluirPorPropriedade(Integer id) throws Exception {
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv2p4 l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();

    }

    public Lv2p4 buscarPorPropriedade(Integer id, String ano) throws Exception {
        List<Lv2p4> l = em.createNamedQuery("Lv2p4.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();

        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv2p4> listar() throws Exception {
        return em.createNamedQuery("Lv2p4.findAll").getResultList();
    }

    public void alterar(Lv2p4 obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Lv2p4 obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    public Lv2p4 buscarPorChavePrimaria(Integer x) {
        return em.find(Lv2p4.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
