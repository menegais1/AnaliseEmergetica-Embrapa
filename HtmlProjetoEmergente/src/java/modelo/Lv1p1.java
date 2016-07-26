/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import dao.PropriedadeDAO;

/**
 *
 * @author Usuario
 */
@Entity
@Table(name = "lv1p1")
@XmlRootElement
@NamedQueries({
    
    @NamedQuery(name = "Lv1p1.findPropriedade", query="SELECT l FROM Lv1p1 l WHERE l.propriedadeId.id = :propriedadeId AND l.ano= :ano"),
    @NamedQuery(name = "Lv1p1.findAll", query = "SELECT l FROM Lv1p1 l"),
    @NamedQuery(name = "Lv1p1.findById", query = "SELECT l FROM Lv1p1 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv1p1.findByAno", query = "SELECT l FROM Lv1p1 l WHERE l.ano = :ano"),
    @NamedQuery(name = "Lv1p1.findByAreaApro", query = "SELECT l FROM Lv1p1 l WHERE l.areaApro = :areaApro")})
public class Lv1p1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "ano")
    private String ano;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "area_apro")
    private BigDecimal areaApro;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv1p1() {
    }
    
    public Lv1p1(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }
    
    public Lv1p1(Integer id) {
        this.id = id;
    }

    public Lv1p1(Integer id, String ano, BigDecimal areaApro) {
        this.id = id;
        this.ano = ano;
        this.areaApro = areaApro;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public BigDecimal getAreaApro() {
         if (areaApro != null) {

            areaApro = areaApro.setScale(2);
        }
        return areaApro;
    }

    public void setAreaApro(BigDecimal areaApro) {
        this.areaApro = areaApro;
    }

    public Propriedade getPropriedadeId() {
        return propriedadeId;
    }

    public void setPropriedadeId(Propriedade propriedadeId) {
        this.propriedadeId = propriedadeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lv1p1)) {
            return false;
        }
        Lv1p1 other = (Lv1p1) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv1p1[ id=" + id + " ]";
    }
    
}
