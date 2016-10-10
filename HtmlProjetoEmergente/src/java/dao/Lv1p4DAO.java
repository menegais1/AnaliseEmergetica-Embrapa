package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Lv1p4;

public class Lv1p4DAO {

    EntityManager em;
    EntityManagerFactory emf;

    public Lv1p4DAO() throws Exception {

        emf = Conexao.getConexao();

    }

    public void incluir(Lv1p4 obj) throws Exception {
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
        em.createQuery("DELETE FROM Lv1p4 l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano").setParameter("propriedadeId", id).setParameter("ano", ano).executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    public void excluirPorPropriedade(Integer id) throws Exception {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.createQuery("DELETE FROM Lv1p4 l WHERE l.propriedadeId.id= :propriedadeId").setParameter("propriedadeId", id).executeUpdate();
        em.getTransaction().commit();
        em.close();

    }

    public Lv1p4 buscarPorPropriedade(Integer id, String ano) throws Exception {
        em = emf.createEntityManager();
        List<Lv1p4> l = em.createNamedQuery("Lv1p4.findPropriedade").setParameter("propriedadeId", id).setParameter("ano", ano).getResultList();
        em.close();
        if (!l.isEmpty()) {
            return l.get(0);
        }

        return null;
    }

    public List<Lv1p4> listar() throws Exception {
        em = emf.createEntityManager();
        List<Lv1p4> o = em.createNamedQuery("Lv1p4.findAll").getResultList();
        em.close();
        return o;
    }

    public void alterar(Lv1p4 obj) throws Exception {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }

    }

    public void excluir(Lv1p4 obj) throws Exception {
        em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public Lv1p4 buscarPorChavePrimaria(Integer x) {
        em = emf.createEntityManager();
        Lv1p4 o = em.find(Lv1p4.class, x);
        em.close();
        return o;
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
