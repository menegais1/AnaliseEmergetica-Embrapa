
package dao;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Conexao {
   
    private static EntityManagerFactory emf;
    
    
    public static EntityManagerFactory getConexao() throws Exception{
        if((emf==null) || (!emf.isOpen())){
            emf=Persistence.createEntityManagerFactory("HtmlProjetoEmergentePU");
        }
        return emf;
    }
    
    public static void closeConexao(){
        if(emf.isOpen()){
            emf.close();
        }
    }
}
