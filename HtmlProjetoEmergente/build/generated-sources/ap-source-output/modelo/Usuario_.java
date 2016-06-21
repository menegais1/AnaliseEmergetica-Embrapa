package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Propriedade;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-17T00:14:01")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> senha;
    public static volatile SingularAttribute<Usuario, Integer> id;
    public static volatile SingularAttribute<Usuario, String> login;
    public static volatile ListAttribute<Usuario, Propriedade> propriedadeList;
    public static volatile SingularAttribute<Usuario, String> email;

}