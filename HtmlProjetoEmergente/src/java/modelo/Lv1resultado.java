/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.PropriedadeDAO;
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

/**
 *
 * @author Usuario
 */
@Entity
@Table(name = "lv1resultado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Lv1resultado.findPropriedade", query = "SELECT l FROM Lv1resultado l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),
    @NamedQuery(name = "Lv1resultado.findAll", query = "SELECT l FROM Lv1resultado l"),
    @NamedQuery(name = "Lv1resultado.findById", query = "SELECT l FROM Lv1resultado l WHERE l.id = :id"),
    @NamedQuery(name = "Lv1resultado.findByCustohectar", query = "SELECT l FROM Lv1resultado l WHERE l.custohectar = :custohectar"),
    @NamedQuery(name = "Lv1resultado.findByLotacaomedia", query = "SELECT l FROM Lv1resultado l WHERE l.lotacaomedia = :lotacaomedia"),
    @NamedQuery(name = "Lv1resultado.findByReceitahectar", query = "SELECT l FROM Lv1resultado l WHERE l.receitahectar = :receitahectar"),
    @NamedQuery(name = "Lv1resultado.findByAno", query = "SELECT l FROM Lv1resultado l WHERE l.ano = :ano")})
public class Lv1resultado implements Serializable {

    @Basic(optional = false)
    @Column(name = "margembruta")
    private BigDecimal margembruta;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "custohectar")
    private BigDecimal custohectar;
    @Basic(optional = false)
    @Column(name = "lotacaomedia")
    private BigDecimal lotacaomedia;
    @Basic(optional = false)
    @Column(name = "receitahectar")
    private BigDecimal receitahectar;

    @Basic(optional = false)
    @Column(name = "ano")
    private String ano;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv1resultado() {
    }

    public Lv1resultado(Integer id, String ano) throws Exception {
        PropriedadeDAO dao = new PropriedadeDAO();
        this.ano = ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);

    }

    public Lv1resultado(Integer id) {
        this.id = id;
    }

    public Lv1resultado(Integer id, BigDecimal custohectar, BigDecimal lotacaomedia, BigDecimal receitahectar, BigDecimal totalcustoproducao, String ano) {
        this.id = id;
        this.custohectar = custohectar;
        this.lotacaomedia = lotacaomedia;
        this.receitahectar = receitahectar;
        this.ano = ano;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getCustohectar() {
        if (custohectar != null) {

            custohectar = custohectar.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return custohectar;
    }

    public void setCustohectar(BigDecimal custohectar) {
        this.custohectar = custohectar;
    }

    public BigDecimal getLotacaomedia() {
        if (lotacaomedia != null) {

            lotacaomedia = lotacaomedia.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return lotacaomedia;
    }

    public void setLotacaomedia(BigDecimal lotacaomedia) {
        this.lotacaomedia = lotacaomedia;
    }

    public BigDecimal getReceitahectar() {
        if (receitahectar != null) {

            receitahectar = receitahectar.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return receitahectar;
    }

    public void setReceitahectar(BigDecimal receitahectar) {
        this.receitahectar = receitahectar;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
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
        if (!(object instanceof Lv1resultado)) {
            return false;
        }
        Lv1resultado other = (Lv1resultado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv1resultado[ id=" + id + " ]";
    }

    public BigDecimal getMargembruta() {
        if (margembruta != null) {

            margembruta = margembruta.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return margembruta;
    }

    public void setMargembruta(BigDecimal margembruta) {
        this.margembruta = margembruta;
    }

}
