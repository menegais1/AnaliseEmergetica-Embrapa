package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Lv1p1;
import modelo.Lv1p2;
import modelo.Lv1p3;
import modelo.Lv1p4;
import modelo.Lv1resultado;
import modelo.Lv2p1;
import modelo.Lv2p2;
import modelo.Lv2p3;
import modelo.Lv2p4;
import modelo.Lv2resultado;
import modelo.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-28T00:03:07")
@StaticMetamodel(Propriedade.class)
public class Propriedade_ { 

    public static volatile SingularAttribute<Propriedade, String> cidade;
    public static volatile ListAttribute<Propriedade, Lv1resultado> lv1resultadoList;
    public static volatile ListAttribute<Propriedade, Lv1p3> lv1p3List;
    public static volatile ListAttribute<Propriedade, Lv2resultado> lv2resultadoList;
    public static volatile SingularAttribute<Propriedade, String> nome;
    public static volatile ListAttribute<Propriedade, Lv2p4> lv2p4List;
    public static volatile ListAttribute<Propriedade, Lv2p2> lv2p2List;
    public static volatile SingularAttribute<Propriedade, Usuario> usuarioId;
    public static volatile SingularAttribute<Propriedade, String> uf;
    public static volatile ListAttribute<Propriedade, Lv2p1> lv2p1List;
    public static volatile ListAttribute<Propriedade, Lv1p4> lv1p4List;
    public static volatile ListAttribute<Propriedade, Lv1p1> lv1p1List;
    public static volatile ListAttribute<Propriedade, Lv1p2> lv1p2List;
    public static volatile SingularAttribute<Propriedade, Integer> id;
    public static volatile ListAttribute<Propriedade, Lv2p3> lv2p3List;

}