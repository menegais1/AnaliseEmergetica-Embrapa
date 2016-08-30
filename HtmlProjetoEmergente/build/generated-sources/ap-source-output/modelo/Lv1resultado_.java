package modelo;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Propriedade;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-08-30T09:22:25")
@StaticMetamodel(Lv1resultado.class)
public class Lv1resultado_ { 

    public static volatile SingularAttribute<Lv1resultado, String> ano;
    public static volatile SingularAttribute<Lv1resultado, BigDecimal> receitahectar;
    public static volatile SingularAttribute<Lv1resultado, BigDecimal> lotacaomedia;
    public static volatile SingularAttribute<Lv1resultado, BigDecimal> custohectar;
    public static volatile SingularAttribute<Lv1resultado, Propriedade> propriedadeId;
    public static volatile SingularAttribute<Lv1resultado, Integer> id;
    public static volatile SingularAttribute<Lv1resultado, BigDecimal> totalcustoproducao;

}