package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Usuario;

public class UsuarioDAO {

    EntityManager em;

    public UsuarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public Usuario login(Usuario obj) {
        List<Usuario> u = em.createNamedQuery("Usuario.findLoginSenha").setParameter("senha", obj.getSenha()).setParameter("login", obj.getLogin()).getResultList();

        if (!u.isEmpty()) {
            return u.get(0);
        }

        return null;
    }

    public void incluir(Usuario obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 

    }

    public List<Usuario> listar() throws Exception {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }

    public void alterar(Usuario obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }

    public void excluir(Usuario obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }

    public Usuario buscarPorChavePrimaria(Integer x) {
        return em.find(Usuario.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
