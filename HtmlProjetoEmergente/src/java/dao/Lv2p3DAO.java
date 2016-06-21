package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv2p3;

public class Lv2p3DAO {
    
    EntityManager em;
    
    public Lv2p3DAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Lv2p3 obj) throws Exception {
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
        em.createQuery("DELETE FROM Lv2p3 l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
     }

    public Lv2p3 buscarPorPropriedade(Integer id, String ano) throws Exception {
        List<Lv2p3> l = em.createNamedQuery("Lv2p3.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();

        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }
    
    public List<Lv2p3> listar() throws Exception {
        return em.createNamedQuery("Lv2p3.findAll").getResultList();
    }
    
    public void alterar(Lv2p3 obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }
    
    public void excluir(Lv2p3 obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }
    
    public Lv2p3 buscarPorChavePrimaria(Integer x) {
        return em.find(Lv2p3.class, x);
    }
    
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    
}
