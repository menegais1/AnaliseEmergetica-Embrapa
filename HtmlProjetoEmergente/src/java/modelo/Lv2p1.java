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
    @NamedQuery(name = "Lv2p1.findPropriedade", query = "SELECT l FROM Lv2p1 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv2p1.findAll", query = "SELECT l FROM Lv2p1 l"),
    @NamedQuery(name = "Lv2p1.findById", query = "SELECT l FROM Lv2p1 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2p1.findByAno", query = "SELECT l FROM Lv2p1 l WHERE l.ano = :ano"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativaVerao", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativaVerao = :pastagemNativaVerao"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativaInverno", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativaInverno = :pastagemNativaInverno"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativaMelhoradaVerao", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativaMelhoradaVerao = :pastagemNativaMelhoradaVerao"),
    @NamedQuery(name = "Lv2p1.findByPastagemNativaMelhoradaInverno", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemNativaMelhoradaInverno = :pastagemNativaMelhoradaInverno"),
    @NamedQuery(name = "Lv2p1.findByPastagemCultivadaPereneVerao", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemCultivadaPereneVerao = :pastagemCultivadaPereneVerao"),
    @NamedQuery(name = "Lv2p1.findByPastagemCultivadaPereneInverno", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemCultivadaPereneInverno = :pastagemCultivadaPereneInverno"),
    @NamedQuery(name = "Lv2p1.findByPastagemAnualInverno", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemAnualInverno = :pastagemAnualInverno"),
    @NamedQuery(name = "Lv2p1.findByPastagemAnualVerao", query = "SELECT l FROM Lv2p1 l WHERE l.pastagemAnualVerao = :pastagemAnualVerao"),
    @NamedQuery(name = "Lv2p1.findByAgriculturaVerao", query = "SELECT l FROM Lv2p1 l WHERE l.agriculturaVerao = :agriculturaVerao"),
    @NamedQuery(name = "Lv2p1.findByAgriculturaInverno", query = "SELECT l FROM Lv2p1 l WHERE l.agriculturaInverno = :agriculturaInverno"),
    @NamedQuery(name = "Lv2p1.findByFlorestasPlantadasInverno", query = "SELECT l FROM Lv2p1 l WHERE l.florestasPlantadasInverno = :florestasPlantadasInverno"),
    @NamedQuery(name = "Lv2p1.findByFlorestasPlantadasVerao", query = "SELECT l FROM Lv2p1 l WHERE l.florestasPlantadasVerao = :florestasPlantadasVerao"),
    @NamedQuery(name = "Lv2p1.findByOutrasAreasVerao", query = "SELECT l FROM Lv2p1 l WHERE l.outrasAreasVerao = :outrasAreasVerao"),
    @NamedQuery(name = "Lv2p1.findByOutrasAreasInverno", query = "SELECT l FROM Lv2p1 l WHERE l.outrasAreasInverno = :outrasAreasInverno"),
    @NamedQuery(name = "Lv2p1.findByMatasNativasVerao", query = "SELECT l FROM Lv2p1 l WHERE l.matasNativasVerao = :matasNativasVerao"),
    @NamedQuery(name = "Lv2p1.findByMatasNativasInverno", query = "SELECT l FROM Lv2p1 l WHERE l.matasNativasInverno = :matasNativasInverno"),
    @NamedQuery(name = "Lv2p1.findBySedesEstradasAcudesVerao", query = "SELECT l FROM Lv2p1 l WHERE l.sedesEstradasAcudesVerao = :sedesEstradasAcudesVerao"),
    @NamedQuery(name = "Lv2p1.findBySedesEstradasAcudesInverno", query = "SELECT l FROM Lv2p1 l WHERE l.sedesEstradasAcudesInverno = :sedesEstradasAcudesInverno"),
    @NamedQuery(name = "Lv2p1.findByInaproveitaveisVerao", query = "SELECT l FROM Lv2p1 l WHERE l.inaproveitaveisVerao = :inaproveitaveisVerao"),
    @NamedQuery(name = "Lv2p1.findByInaproveitaveisInverno", query = "SELECT l FROM Lv2p1 l WHERE l.inaproveitaveisInverno = :inaproveitaveisInverno")})
public class Lv2p1 implements Serializable {

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
    @Column(name = "pastagem_nativa_verao")
    private BigDecimal pastagemNativaVerao;
    @Basic(optional = false)
    @Column(name = "pastagem_nativa_inverno")
    private BigDecimal pastagemNativaInverno;
    @Basic(optional = false)
    @Column(name = "pastagem_nativa_melhorada_verao")
    private BigDecimal pastagemNativaMelhoradaVerao;
    @Basic(optional = false)
    @Column(name = "pastagem_nativa_melhorada_inverno")
    private BigDecimal pastagemNativaMelhoradaInverno;
    @Basic(optional = false)
    @Column(name = "pastagem_cultivada_perene_verao")
    private BigDecimal pastagemCultivadaPereneVerao;
    @Basic(optional = false)
    @Column(name = "pastagem_cultivada_perene_inverno")
    private BigDecimal pastagemCultivadaPereneInverno;
    @Basic(optional = false)
    @Column(name = "pastagem_anual_inverno")
    private BigDecimal pastagemAnualInverno;
    @Basic(optional = false)
    @Column(name = "pastagem_anual_verao")
    private BigDecimal pastagemAnualVerao;
    @Basic(optional = false)
    @Column(name = "agricultura_verao")
    private BigDecimal agriculturaVerao;
    @Basic(optional = false)
    @Column(name = "agricultura_inverno")
    private BigDecimal agriculturaInverno;
    @Basic(optional = false)
    @Column(name = "florestas_plantadas_inverno")
    private BigDecimal florestasPlantadasInverno;
    @Basic(optional = false)
    @Column(name = "florestas_plantadas_verao")
    private BigDecimal florestasPlantadasVerao;
    @Basic(optional = false)
    @Column(name = "outras_areas_verao")
    private BigDecimal outrasAreasVerao;
    @Basic(optional = false)
    @Column(name = "outras_areas_inverno")
    private BigDecimal outrasAreasInverno;
    @Basic(optional = false)
    @Column(name = "matas_nativas_verao")
    private BigDecimal matasNativasVerao;
    @Basic(optional = false)
    @Column(name = "matas_nativas_inverno")
    private BigDecimal matasNativasInverno;
    @Basic(optional = false)
    @Column(name = "sedes_estradas_acudes_verao")
    private BigDecimal sedesEstradasAcudesVerao;
    @Basic(optional = false)
    @Column(name = "sedes_estradas_acudes_inverno")
    private BigDecimal sedesEstradasAcudesInverno;
    @Basic(optional = false)
    @Column(name = "inaproveitaveis_verao")
    private BigDecimal inaproveitaveisVerao;
    @Basic(optional = false)
    @Column(name = "inaproveitaveis_inverno")
    private BigDecimal inaproveitaveisInverno;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2p1() {
    }

    public Lv2p1(Integer id, String ano) throws Exception {
        PropriedadeDAO dao = new PropriedadeDAO();
        this.ano = ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);

    }

    public Lv2p1(Integer id) {
        this.id = id;
    }

    public Lv2p1(Integer id, String ano, BigDecimal pastagemNativaVerao, BigDecimal pastagemNativaInverno, BigDecimal pastagemNativaMelhoradaVerao, BigDecimal pastagemNativaMelhoradaInverno, BigDecimal pastagemCultivadaPereneVerao, BigDecimal pastagemCultivadaPereneInverno, BigDecimal pastagemAnualInverno, BigDecimal pastagemAnualVerao, BigDecimal agriculturaVerao, BigDecimal agriculturaInverno, BigDecimal florestasPlantadasInverno, BigDecimal florestasPlantadasVerao, BigDecimal outrasAreasVerao, BigDecimal outrasAreasInverno, BigDecimal matasNativasVerao, BigDecimal matasNativasInverno, BigDecimal sedesEstradasAcudesVerao, BigDecimal sedesEstradasAcudesInverno, BigDecimal inaproveitaveisVerao, BigDecimal inaproveitaveisInverno) {
        this.id = id;
        this.ano = ano;
        this.pastagemNativaVerao = pastagemNativaVerao;
        this.pastagemNativaInverno = pastagemNativaInverno;
        this.pastagemNativaMelhoradaVerao = pastagemNativaMelhoradaVerao;
        this.pastagemNativaMelhoradaInverno = pastagemNativaMelhoradaInverno;
        this.pastagemCultivadaPereneVerao = pastagemCultivadaPereneVerao;
        this.pastagemCultivadaPereneInverno = pastagemCultivadaPereneInverno;
        this.pastagemAnualInverno = pastagemAnualInverno;
        this.pastagemAnualVerao = pastagemAnualVerao;
        this.agriculturaVerao = agriculturaVerao;
        this.agriculturaInverno = agriculturaInverno;
        this.florestasPlantadasInverno = florestasPlantadasInverno;
        this.florestasPlantadasVerao = florestasPlantadasVerao;
        this.outrasAreasVerao = outrasAreasVerao;
        this.outrasAreasInverno = outrasAreasInverno;
        this.matasNativasVerao = matasNativasVerao;
        this.matasNativasInverno = matasNativasInverno;
        this.sedesEstradasAcudesVerao = sedesEstradasAcudesVerao;
        this.sedesEstradasAcudesInverno = sedesEstradasAcudesInverno;
        this.inaproveitaveisVerao = inaproveitaveisVerao;
        this.inaproveitaveisInverno = inaproveitaveisInverno;
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

    public BigDecimal getPastagemNativaVerao() {
        if (pastagemNativaVerao != null) {

            pastagemNativaVerao = pastagemNativaVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemNativaVerao;
    }

    public void setPastagemNativaVerao(BigDecimal pastagemNativaVerao) {
        this.pastagemNativaVerao = pastagemNativaVerao;
    }

    public BigDecimal getPastagemNativaInverno() {
        if (pastagemNativaInverno != null) {

            pastagemNativaInverno = pastagemNativaInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemNativaInverno;
    }

    public void setPastagemNativaInverno(BigDecimal pastagemNativaInverno) {
        this.pastagemNativaInverno = pastagemNativaInverno;
    }

    public BigDecimal getPastagemNativaMelhoradaVerao() {
        if (pastagemNativaMelhoradaVerao != null) {

            pastagemNativaMelhoradaVerao = pastagemNativaMelhoradaVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemNativaMelhoradaVerao;
    }

    public void setPastagemNativaMelhoradaVerao(BigDecimal pastagemNativaMelhoradaVerao) {
        this.pastagemNativaMelhoradaVerao = pastagemNativaMelhoradaVerao;
    }

    public BigDecimal getPastagemNativaMelhoradaInverno() {
        if (pastagemNativaMelhoradaInverno != null) {

            pastagemNativaMelhoradaInverno = pastagemNativaMelhoradaInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemNativaMelhoradaInverno;
    }

    public void setPastagemNativaMelhoradaInverno(BigDecimal pastagemNativaMelhoradaInverno) {
        this.pastagemNativaMelhoradaInverno = pastagemNativaMelhoradaInverno;
    }

    public BigDecimal getPastagemCultivadaPereneVerao() {
        if (pastagemCultivadaPereneVerao != null) {

            pastagemCultivadaPereneVerao = pastagemCultivadaPereneVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemCultivadaPereneVerao;
    }

    public void setPastagemCultivadaPereneVerao(BigDecimal pastagemCultivadaPereneVerao) {
        this.pastagemCultivadaPereneVerao = pastagemCultivadaPereneVerao;
    }

    public BigDecimal getPastagemCultivadaPereneInverno() {
        if (pastagemCultivadaPereneInverno != null) {

            pastagemCultivadaPereneInverno = pastagemCultivadaPereneInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemCultivadaPereneInverno;
    }

    public void setPastagemCultivadaPereneInverno(BigDecimal pastagemCultivadaPereneInverno) {
        this.pastagemCultivadaPereneInverno = pastagemCultivadaPereneInverno;
    }

    public BigDecimal getPastagemAnualInverno() {
        if (pastagemAnualInverno != null) {

            pastagemAnualInverno = pastagemAnualInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemAnualInverno;
    }

    public void setPastagemAnualInverno(BigDecimal pastagemAnualInverno) {
        this.pastagemAnualInverno = pastagemAnualInverno;
    }

    public BigDecimal getPastagemAnualVerao() {
        if (pastagemAnualVerao != null) {

            pastagemAnualVerao = pastagemAnualVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return pastagemAnualVerao;
    }

    public void setPastagemAnualVerao(BigDecimal pastagemAnualVerao) {

        this.pastagemAnualVerao = pastagemAnualVerao;
    }

    public BigDecimal getAgriculturaVerao() {
        if (agriculturaVerao != null) {

            agriculturaVerao = agriculturaVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return agriculturaVerao;
    }

    public void setAgriculturaVerao(BigDecimal agriculturaVerao) {
        this.agriculturaVerao = agriculturaVerao;
    }

    public BigDecimal getAgriculturaInverno() {
        if (agriculturaInverno != null) {

            agriculturaInverno = agriculturaInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return agriculturaInverno;
    }

    public void setAgriculturaInverno(BigDecimal agriculturaInverno) {
        this.agriculturaInverno = agriculturaInverno;
    }

    public BigDecimal getFlorestasPlantadasInverno() {
        if (florestasPlantadasInverno != null) {

            florestasPlantadasInverno = florestasPlantadasInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return florestasPlantadasInverno;
    }

    public void setFlorestasPlantadasInverno(BigDecimal florestasPlantadasInverno) {
        this.florestasPlantadasInverno = florestasPlantadasInverno;
    }

    public BigDecimal getFlorestasPlantadasVerao() {
        if (florestasPlantadasVerao != null) {

            florestasPlantadasVerao = florestasPlantadasVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return florestasPlantadasVerao;
    }

    public void setFlorestasPlantadasVerao(BigDecimal florestasPlantadasVerao) {
        this.florestasPlantadasVerao = florestasPlantadasVerao;
    }

    public BigDecimal getOutrasAreasVerao() {
        if (outrasAreasVerao != null) {

            outrasAreasVerao = outrasAreasVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return outrasAreasVerao;
    }

    public void setOutrasAreasVerao(BigDecimal outrasAreasVerao) {
        this.outrasAreasVerao = outrasAreasVerao;
    }

    public BigDecimal getOutrasAreasInverno() {
        if (outrasAreasInverno != null) {

            outrasAreasInverno = outrasAreasInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return outrasAreasInverno;
    }

    public void setOutrasAreasInverno(BigDecimal outrasAreasInverno) {
        this.outrasAreasInverno = outrasAreasInverno;
    }

    public BigDecimal getMatasNativasVerao() {
        if (matasNativasVerao != null) {

            matasNativasVerao = matasNativasVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return matasNativasVerao;
    }

    public void setMatasNativasVerao(BigDecimal matasNativasVerao) {
        this.matasNativasVerao = matasNativasVerao;
    }

    public BigDecimal getMatasNativasInverno() {
        if (matasNativasInverno != null) {

            matasNativasInverno = matasNativasInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return matasNativasInverno;
    }

    public void setMatasNativasInverno(BigDecimal matasNativasInverno) {
        this.matasNativasInverno = matasNativasInverno;
    }

    public BigDecimal getSedesEstradasAcudesVerao() {
        if (sedesEstradasAcudesVerao != null) {

            sedesEstradasAcudesVerao = sedesEstradasAcudesVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return sedesEstradasAcudesVerao;
    }

    public void setSedesEstradasAcudesVerao(BigDecimal sedesEstradasAcudesVerao) {
        this.sedesEstradasAcudesVerao = sedesEstradasAcudesVerao;
    }

    public BigDecimal getSedesEstradasAcudesInverno() {
        if (sedesEstradasAcudesInverno != null) {

            sedesEstradasAcudesInverno = sedesEstradasAcudesInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return sedesEstradasAcudesInverno;
    }

    public void setSedesEstradasAcudesInverno(BigDecimal sedesEstradasAcudesInverno) {
        this.sedesEstradasAcudesInverno = sedesEstradasAcudesInverno;
    }

    public BigDecimal getInaproveitaveisVerao() {
        if (inaproveitaveisVerao != null) {

            inaproveitaveisVerao = inaproveitaveisVerao.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return inaproveitaveisVerao;
    }

    public void setInaproveitaveisVerao(BigDecimal inaproveitaveisVerao) {
        this.inaproveitaveisVerao = inaproveitaveisVerao;
    }

    public BigDecimal getInaproveitaveisInverno() {
        if (inaproveitaveisInverno != null) {

            inaproveitaveisInverno = inaproveitaveisInverno.setScale(2,BigDecimal.ROUND_HALF_UP);
        }
        return inaproveitaveisInverno;
    }

    public void setInaproveitaveisInverno(BigDecimal inaproveitaveisInverno) {
        this.inaproveitaveisInverno = inaproveitaveisInverno;
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
