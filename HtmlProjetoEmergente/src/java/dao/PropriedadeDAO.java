package dao;

import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Propriedade;

public class PropriedadeDAO {

    EntityManager em;

    public PropriedadeDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Propriedade obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }

    }

    public List<Propriedade> listarPorUsuario(Integer id) {
        return em.createNamedQuery("Propriedade.findUsuario").setParameter("usuarioId", id).getResultList();
    }

    public List<Propriedade> listar() throws Exception {
        return em.createNamedQuery("Propriedade.findAll").getResultList();
    }

    public List<String> listarAno(Long id) throws Exception {
        List<String> lv1p1 = em.createNativeQuery("Select l.ano from Lv1p1 l where l.propriedade_id = ?").setParameter(1, id).getResultList();
        List<String> lv1p2 = em.createNativeQuery("Select l.ano from Lv2p1 l where l.propriedade_id = ?").setParameter(1, id).getResultList();
        for (String teste : lv1p1) {
            lv1p2.remove(teste);
                
            

        }
        lv1p1.addAll((Collection)lv1p2);
        return lv1p1;
    }

    public void alterar(Propriedade obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Propriedade obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    public Propriedade buscarPorChavePrimaria(Integer x) {
        return em.find(Propriedade.class, x);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
