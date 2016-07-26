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
@Table(name = "lv2resultado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Lv2resultado.findPropriedade", query = "SELECT l FROM Lv2resultado l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv2resultado.findAll", query = "SELECT l FROM Lv2resultado l"),
    @NamedQuery(name = "Lv2resultado.findById", query = "SELECT l FROM Lv2resultado l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2resultado.findByAreamedia", query = "SELECT l FROM Lv2resultado l WHERE l.areamedia = :areamedia"),
    @NamedQuery(name = "Lv2resultado.findByAreaaproveitavel", query = "SELECT l FROM Lv2resultado l WHERE l.areaaproveitavel = :areaaproveitavel"),
    @NamedQuery(name = "Lv2resultado.findByPercentualrebanhocomcria", query = "SELECT l FROM Lv2resultado l WHERE l.percentualrebanhocomcria = :percentualrebanhocomcria"),
    @NamedQuery(name = "Lv2resultado.findByLotacaomedia2", query = "SELECT l FROM Lv2resultado l WHERE l.lotacaomedia2 = :lotacaomedia2"),
    @NamedQuery(name = "Lv2resultado.findByTotalreceita", query = "SELECT l FROM Lv2resultado l WHERE l.totalreceita = :totalreceita"),
    @NamedQuery(name = "Lv2resultado.findByReceitahectar2", query = "SELECT l FROM Lv2resultado l WHERE l.receitahectar2 = :receitahectar2"),
    @NamedQuery(name = "Lv2resultado.findByCustotalproducao", query = "SELECT l FROM Lv2resultado l WHERE l.custotalproducao = :custotalproducao"),
    @NamedQuery(name = "Lv2resultado.findByCustoatividadecria1", query = "SELECT l FROM Lv2resultado l WHERE l.custoatividadecria1 = :custoatividadecria1"),
    @NamedQuery(name = "Lv2resultado.findByCustoproducaohectar1", query = "SELECT l FROM Lv2resultado l WHERE l.custoproducaohectar1 = :custoproducaohectar1"),
    @NamedQuery(name = "Lv2resultado.findByCustoterneiro", query = "SELECT l FROM Lv2resultado l WHERE l.custoterneiro = :custoterneiro"),
    @NamedQuery(name = "Lv2resultado.findByAno", query = "SELECT l FROM Lv2resultado l WHERE l.ano = :ano")})
public class Lv2resultado implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "areamedia")
    private BigDecimal areamedia;
    @Basic(optional = false)
    @Column(name = "areaaproveitavel")
    private BigDecimal areaaproveitavel;
    @Basic(optional = false)
    @Column(name = "percentualrebanhocomcria")
    private BigDecimal percentualrebanhocomcria;
    @Basic(optional = false)
    @Column(name = "lotacaomedia2")
    private BigDecimal lotacaomedia2;
    @Basic(optional = false)
    @Column(name = "totalreceita")
    private BigDecimal totalreceita;
    @Basic(optional = false)
    @Column(name = "receitahectar2")
    private BigDecimal receitahectar2;
    @Basic(optional = false)
    @Column(name = "custotalproducao")
    private BigDecimal custotalproducao;
    @Basic(optional = false)
    @Column(name = "custoatividadecria1")
    private BigDecimal custoatividadecria1;
    @Basic(optional = false)
    @Column(name = "custoproducaohectar1")
    private BigDecimal custoproducaohectar1;
    @Basic(optional = false)
    @Column(name = "custoterneiro")
    private BigDecimal custoterneiro;
    @Basic(optional = false)
    @Column(name = "ano")
    private String ano;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2resultado() {
    }

    public Lv2resultado(Integer id, String ano) throws Exception {
        PropriedadeDAO dao = new PropriedadeDAO();
        this.ano = ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);

    }

    public Lv2resultado(Integer id) {
        this.id = id;
    }

    public Lv2resultado(Integer id, BigDecimal areamedia, BigDecimal areaaproveitavel, BigDecimal percentualrebanhocomcria, BigDecimal lotacaomedia2, BigDecimal totalreceita, BigDecimal receitahectar2, BigDecimal custotalproducao, BigDecimal custoatividadecria1, BigDecimal custoproducaohectar1, BigDecimal custoterneiro, String ano) {
        this.id = id;
        this.areamedia = areamedia;
        this.areaaproveitavel = areaaproveitavel;
        this.percentualrebanhocomcria = percentualrebanhocomcria;
        this.lotacaomedia2 = lotacaomedia2;
        this.totalreceita = totalreceita;
        this.receitahectar2 = receitahectar2;
        this.custotalproducao = custotalproducao;
        this.custoatividadecria1 = custoatividadecria1;
        this.custoproducaohectar1 = custoproducaohectar1;
        this.custoterneiro = custoterneiro;
        this.ano = ano;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getAreamedia() {
        if (areamedia != null) {

            areamedia = areamedia.setScale(2);
        }
        return areamedia;
    }

    public void setAreamedia(BigDecimal areamedia) {
        this.areamedia = areamedia;
    }

    public BigDecimal getAreaaproveitavel() {
        if (areaaproveitavel != null) {

            areaaproveitavel = areaaproveitavel.setScale(2);
        }
        return areaaproveitavel;
    }

    public void setAreaaproveitavel(BigDecimal areaaproveitavel) {
        this.areaaproveitavel = areaaproveitavel;
    }

    public BigDecimal getPercentualrebanhocomcria() {
        if (percentualrebanhocomcria != null) {

            percentualrebanhocomcria = percentualrebanhocomcria.setScale(2);
        }
        return percentualrebanhocomcria;
    }

    public void setPercentualrebanhocomcria(BigDecimal percentualrebanhocomcria) {
        this.percentualrebanhocomcria = percentualrebanhocomcria;
    }

    public BigDecimal getLotacaomedia2() {
        if (lotacaomedia2 != null) {

            lotacaomedia2 = lotacaomedia2.setScale(2);
        }
        return lotacaomedia2;
    }

    public void setLotacaomedia2(BigDecimal lotacaomedia2) {
        this.lotacaomedia2 = lotacaomedia2;
    }

    public BigDecimal getTotalreceita() {
        if (totalreceita != null) {

            totalreceita = totalreceita.setScale(2);
        }
        return totalreceita;
    }

    public void setTotalreceita(BigDecimal totalreceita) {
        this.totalreceita = totalreceita;
    }

    public BigDecimal getReceitahectar2() {
        if (receitahectar2 != null) {

            receitahectar2 = receitahectar2.setScale(2);
        }
        return receitahectar2;
    }

    public void setReceitahectar2(BigDecimal receitahectar2) {
        this.receitahectar2 = receitahectar2;
    }

    public BigDecimal getCustotalproducao() {
        if (custotalproducao != null) {

            custotalproducao = custotalproducao.setScale(2);
        }
        return custotalproducao;
    }

    public void setCustotalproducao(BigDecimal custotalproducao) {
        this.custotalproducao = custotalproducao;
    }

    public BigDecimal getCustoatividadecria1() {
        if (custoatividadecria1 != null) {

            custoatividadecria1 = custoatividadecria1.setScale(2);
        }
        return custoatividadecria1;
    }

    public void setCustoatividadecria1(BigDecimal custoatividadecria1) {
        this.custoatividadecria1 = custoatividadecria1;
    }

    public BigDecimal getCustoproducaohectar1() {
        if (custoproducaohectar1 != null) {

            custoproducaohectar1 = custoproducaohectar1.setScale(2);
        }
        return custoproducaohectar1;
    }

    public void setCustoproducaohectar1(BigDecimal custoproducaohectar1) {
        this.custoproducaohectar1 = custoproducaohectar1;
    }

    public BigDecimal getCustoterneiro() {
        if (custoterneiro != null) {

            custoterneiro = custoterneiro.setScale(2);
        }
        return custoterneiro;
    }

    public void setCustoterneiro(BigDecimal custoterneiro) {
        this.custoterneiro = custoterneiro;
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
        if (!(object instanceof Lv2resultado)) {
            return false;
        }
        Lv2resultado other = (Lv2resultado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv2resultado[ id=" + id + " ]";
    }

}
