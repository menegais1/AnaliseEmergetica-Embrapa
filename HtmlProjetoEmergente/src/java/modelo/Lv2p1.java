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
@Table(name = "lv2p1")
@XmlRootElement
@NamedQueries({
    
        @NamedQuery(name = "Lv2p1.findPropriedade", query="SELECT l FROM Lv2p1 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv2p1.findAll", query = "SELECT l FROM Lv2p1 l"),
    @NamedQuery(name = "Lv2p1.findById", query = "SELECT l FROM Lv2p1 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativa", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativa = :pastagemNativa"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativaMelhorada", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativaMelhorada = :pastagemNativaMelhorada"),
    @NamedQuery(name = "Lv2p1.findByPastagemCultivadaPerene", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemCultivadaPerene = :pastagemCultivadaPerene"),
    @NamedQuery(name = "Lv2p1.findByPastagemAnuaisDeInverno", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemAnuaisDeInverno = :pastagemAnuaisDeInverno"),
    @NamedQuery(name = "Lv2p1.findByPastagemAnuaisDeVerao", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemAnuaisDeVerao = :pastagemAnuaisDeVerao"),
    @NamedQuery(name = "Lv2p1.findByAgriculturaI", query = "SELECT l FROM Lv2p1 l WHERE l.agriculturaI = :agriculturaI"),
    @NamedQuery(name = "Lv2p1.findByAgriculturaV", query = "SELECT l FROM Lv2p1 l WHERE l.agriculturaV = :agriculturaV"),
    @NamedQuery(name = "Lv2p1.findByFlorestasPlantadas", query = "SELECT l FROM Lv2p1 l WHERE l.florestasPlantadas = :florestasPlantadas"),
    @NamedQuery(name = "Lv2p1.findByOutrasCulturas", query = "SELECT l FROM Lv2p1 l WHERE l.outrasCulturas = :outrasCulturas"),
    @NamedQuery(name = "Lv2p1.findByMatasNativas", query = "SELECT l FROM Lv2p1 l WHERE l.matasNativas = :matasNativas"),
    @NamedQuery(name = "Lv2p1.findBySea", query = "SELECT l FROM Lv2p1 l WHERE l.sea = :sea"),
    @NamedQuery(name = "Lv2p1.findByInaproveitavel", query = "SELECT l FROM Lv2p1 l WHERE l.inaproveitavel = :inaproveitavel"),
    @NamedQuery(name = "Lv2p1.findByAno", query = "SELECT l FROM Lv2p1 l WHERE l.ano = :ano")})
public class Lv2p1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "pastagem_nativa")
    private BigDecimal pastagemNativa;
    @Basic(optional = false)
    @Column(name = "pastagem_nativa_melhorada")
    private BigDecimal pastagemNativaMelhorada;
    @Basic(optional = false)
    @Column(name = "pastagem_cultivada_perene")
    private BigDecimal pastagemCultivadaPerene;
    @Basic(optional = false)
    @Column(name = "pastagem_anuais_de_inverno")
    private BigDecimal pastagemAnuaisDeInverno;
    @Basic(optional = false)
    @Column(name = "pastagem_anuais_de_verao")
    private BigDecimal pastagemAnuaisDeVerao;
    @Basic(optional = false)
    @Column(name = "agricultura_i")
    private BigDecimal agriculturaI;
    @Basic(optional = false)
    @Column(name = "agricultura_v")
    private BigDecimal agriculturaV;
    @Basic(optional = false)
    @Column(name = "florestas_plantadas")
    private BigDecimal florestasPlantadas;
    @Basic(optional = false)
    @Column(name = "outras_culturas")
    private BigDecimal outrasCulturas;
    @Basic(optional = false)
    @Column(name = "matas_nativas")
    private BigDecimal matasNativas;
    @Basic(optional = false)
    @Column(name = "sea")
    private BigDecimal sea;
    @Basic(optional = false)
    @Column(name = "inaproveitavel")
    private BigDecimal inaproveitavel;
    @Column(name = "ano")
    private String ano;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2p1() {
    }
    
    public Lv2p1(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }

    public Lv2p1(Integer id) {
        this.id = id;
    }

    public Lv2p1(Integer id, BigDecimal pastagemNativa, BigDecimal pastagemNativaMelhorada, BigDecimal pastagemCultivadaPerene, BigDecimal pastagemAnuaisDeInverno, BigDecimal pastagemAnuaisDeVerao, BigDecimal agriculturaI, BigDecimal agriculturaV, BigDecimal florestasPlantadas, BigDecimal outrasCulturas, BigDecimal matasNativas, BigDecimal sea, BigDecimal inaproveitavel) {
        this.id = id;
        this.pastagemNativa = pastagemNativa;
        this.pastagemNativaMelhorada = pastagemNativaMelhorada;
        this.pastagemCultivadaPerene = pastagemCultivadaPerene;
        this.pastagemAnuaisDeInverno = pastagemAnuaisDeInverno;
        this.pastagemAnuaisDeVerao = pastagemAnuaisDeVerao;
        this.agriculturaI = agriculturaI;
        this.agriculturaV = agriculturaV;
        this.florestasPlantadas = florestasPlantadas;
        this.outrasCulturas = outrasCulturas;
        this.matasNativas = matasNativas;
        this.sea = sea;
        this.inaproveitavel = inaproveitavel;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getPastagemNativa() {
        return pastagemNativa;
    }

    public void setPastagemNativa(BigDecimal pastagemNativa) {
        this.pastagemNativa = pastagemNativa;
    }

    public BigDecimal getPastagemNativaMelhorada() {
        return pastagemNativaMelhorada;
    }

    public void setPastagemNativaMelhorada(BigDecimal pastagemNativaMelhorada) {
        this.pastagemNativaMelhorada = pastagemNativaMelhorada;
    }

    public BigDecimal getPastagemCultivadaPerene() {
        return pastagemCultivadaPerene;
    }

    public void setPastagemCultivadaPerene(BigDecimal pastagemCultivadaPerene) {
        this.pastagemCultivadaPerene = pastagemCultivadaPerene;
    }

    public BigDecimal getPastagemAnuaisDeInverno() {
        return pastagemAnuaisDeInverno;
    }

    public void setPastagemAnuaisDeInverno(BigDecimal pastagemAnuaisDeInverno) {
        this.pastagemAnuaisDeInverno = pastagemAnuaisDeInverno;
    }

    public BigDecimal getPastagemAnuaisDeVerao() {
        return pastagemAnuaisDeVerao;
    }

    public void setPastagemAnuaisDeVerao(BigDecimal pastagemAnuaisDeVerao) {
        this.pastagemAnuaisDeVerao = pastagemAnuaisDeVerao;
    }

    public BigDecimal getAgriculturaI() {
        return agriculturaI;
    }

    public void setAgriculturaI(BigDecimal agriculturaI) {
        this.agriculturaI = agriculturaI;
    }

    public BigDecimal getAgriculturaV() {
        return agriculturaV;
    }

    public void setAgriculturaV(BigDecimal agriculturaV) {
        this.agriculturaV = agriculturaV;
    }

    public BigDecimal getFlorestasPlantadas() {
        return florestasPlantadas;
    }

    public void setFlorestasPlantadas(BigDecimal florestasPlantadas) {
        this.florestasPlantadas = florestasPlantadas;
    }

    public BigDecimal getOutrasCulturas() {
        return outrasCulturas;
    }

    public void setOutrasCulturas(BigDecimal outrasCulturas) {
        this.outrasCulturas = outrasCulturas;
    }

    public BigDecimal getMatasNativas() {
        return matasNativas;
    }

    public void setMatasNativas(BigDecimal matasNativas) {
        this.matasNativas = matasNativas;
    }

    public BigDecimal getSea() {
        return sea;
    }

    public void setSea(BigDecimal sea) {
        this.sea = sea;
    }

    public BigDecimal getInaproveitavel() {
        return inaproveitavel;
    }

    public void setInaproveitavel(BigDecimal inaproveitavel) {
        this.inaproveitavel = inaproveitavel;
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
        if (!(object instanceof Lv2p1)) {
            return false;
        }
        Lv2p1 other = (Lv2p1) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv2p1[ id=" + id + " ]";
    }
    
}
