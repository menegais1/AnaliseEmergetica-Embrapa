package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv1p2;

public class Lv1p2DAO {

    EntityManager em;
    EntityManagerFactory emf;
    
    public Lv1p2DAO() throws Exception {
        
        emf = Conexao.getConexao();
       
    }

    public void incluir(Lv1p2 obj) throws Exception {
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
        em.createQuery("DELETE FROM Lv1p2 l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }
    public void excluirPorPropriedade(Integer id) throws Exception {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv1p2 l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public Lv1p2 buscarPorPropriedade(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();
        List<Lv1p2> l = em.createNamedQuery("Lv1p2.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();
        em.close();
        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv1p2> listar() throws Exception {
        em = emf.createEntityManager();
        List<Lv1p2> o = em.createNamedQuery("Lv1p2.findAll").getResultList();
        em.close();
        return o;
    }

    public void alterar(Lv1p2 obj) throws Exception {
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

    public void excluir(Lv1p2 obj) throws Exception {
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

    public Lv1p2 buscarPorChavePrimaria(Integer x) {
        em = emf.createEntityManager();
        Lv1p2 o = em.find(Lv1p2.class, x);
        em.close();
        return o;
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
