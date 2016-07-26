package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv1p2;

public class Lv1p2DAO {

    EntityManager em;

    public Lv1p2DAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Lv1p2 obj) throws Exception {
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
        em.createQuery("DELETE FROM Lv1p2 l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
    }
    public void excluirPorPropriedade(Integer id) throws Exception {
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv1p2 l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
    }

    public Lv1p2 buscarPorPropriedade(Integer id, String ano) throws Exception {
        List<Lv1p2> l = em.createNamedQuery("Lv1p2.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();

        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv1p2> listar() throws Exception {
        return em.createNamedQuery("Lv1p2.findAll").getResultList();
    }

    public void alterar(Lv1p2 obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }

    public void excluir(Lv1p2 obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }

    public Lv1p2 buscarPorChavePrimaria(Integer x) {
        return em.find(Lv1p2.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
