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
 * @author Roberto Menegais
 */
@Entity
@Table(name = "lv2p3")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Lv2p3.findPropriedade", query = "SELECT l FROM Lv2p3 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv2p3.findAll", query = "SELECT l FROM Lv2p3 l"),
    @NamedQuery(name = "Lv2p3.findById", query = "SELECT l FROM Lv2p3 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2p3.findByTerneirosQuant", query = "SELECT l FROM Lv2p3 l WHERE l.terneirosQuant = :terneirosQuant"),
    @NamedQuery(name = "Lv2p3.findByTerneirosValor", query = "SELECT l FROM Lv2p3 l WHERE l.terneirosValor = :terneirosValor"),
    @NamedQuery(name = "Lv2p3.findByTerneirasQuant", query = "SELECT l FROM Lv2p3 l WHERE l.terneirasQuant = :terneirasQuant"),
    @NamedQuery(name = "Lv2p3.findByTerneirasValor", query = "SELECT l FROM Lv2p3 l WHERE l.terneirasValor = :terneirasValor"),
    @NamedQuery(name = "Lv2p3.findByNovilhasQuant", query = "SELECT l FROM Lv2p3 l WHERE l.novilhasQuant = :novilhasQuant"),
    @NamedQuery(name = "Lv2p3.findByNovilhasValor", query = "SELECT l FROM Lv2p3 l WHERE l.novilhasValor = :novilhasValor"),
    @NamedQuery(name = "Lv2p3.findByVacasDeDescarteQuant", query = "SELECT l FROM Lv2p3 l WHERE l.vacasDeDescarteQuant = :vacasDeDescarteQuant"),
    @NamedQuery(name = "Lv2p3.findByVacasDeDescarteValor", query = "SELECT l FROM Lv2p3 l WHERE l.vacasDeDescarteValor = :vacasDeDescarteValor"),
    @NamedQuery(name = "Lv2p3.findByVacaPrenhaQuant", query = "SELECT l FROM Lv2p3 l WHERE l.vacaPrenhaQuant = :vacaPrenhaQuant"),
    @NamedQuery(name = "Lv2p3.findByVacaPrenhaValor", query = "SELECT l FROM Lv2p3 l WHERE l.vacaPrenhaValor = :vacaPrenhaValor"),
    @NamedQuery(name = "Lv2p3.findByVacaComCriaQuant", query = "SELECT l FROM Lv2p3 l WHERE l.vacaComCriaQuant = :vacaComCriaQuant"),
    @NamedQuery(name = "Lv2p3.findByVacaComCriaValor", query = "SELECT l FROM Lv2p3 l WHERE l.vacaComCriaValor = :vacaComCriaValor"),
    @NamedQuery(name = "Lv2p3.findByVacaGordaQuant", query = "SELECT l FROM Lv2p3 l WHERE l.vacaGordaQuant = :vacaGordaQuant"),
    @NamedQuery(name = "Lv2p3.findByVacaGordaValor", query = "SELECT l FROM Lv2p3 l WHERE l.vacaGordaValor = :vacaGordaValor"),
    @NamedQuery(name = "Lv2p3.findByNovilhoPraRecriaQuant", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoPraRecriaQuant = :novilhoPraRecriaQuant"),
    @NamedQuery(name = "Lv2p3.findByNovilhoPraRecriaValor", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoPraRecriaValor = :novilhoPraRecriaValor"),
    @NamedQuery(name = "Lv2p3.findByNovilhoGordoQuant", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoGordoQuant = :novilhoGordoQuant"),
    @NamedQuery(name = "Lv2p3.findByNovilhoGordoValor", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoGordoValor = :novilhoGordoValor"),
    @NamedQuery(name = "Lv2p3.findByTorunosQuant", query = "SELECT l FROM Lv2p3 l WHERE l.torunosQuant = :torunosQuant"),
    @NamedQuery(name = "Lv2p3.findByTorunosValor", query = "SELECT l FROM Lv2p3 l WHERE l.torunosValor = :torunosValor"),
    @NamedQuery(name = "Lv2p3.findByTouroQuant", query = "SELECT l FROM Lv2p3 l WHERE l.touroQuant = :touroQuant"),
    @NamedQuery(name = "Lv2p3.findByTouroValor", query = "SELECT l FROM Lv2p3 l WHERE l.touroValor = :touroValor"),
    @NamedQuery(name = "Lv2p3.findByAno", query = "SELECT l FROM Lv2p3 l WHERE l.ano = :ano"),
    @NamedQuery(name = "Lv2p3.findByTerneirosKg", query = "SELECT l FROM Lv2p3 l WHERE l.terneirosKg = :terneirosKg"),
    @NamedQuery(name = "Lv2p3.findByTerneirasKg", query = "SELECT l FROM Lv2p3 l WHERE l.terneirasKg = :terneirasKg"),
    @NamedQuery(name = "Lv2p3.findByNovilhasKg", query = "SELECT l FROM Lv2p3 l WHERE l.novilhasKg = :novilhasKg"),
    @NamedQuery(name = "Lv2p3.findByVacasDeDescarteKg", query = "SELECT l FROM Lv2p3 l WHERE l.vacasDeDescarteKg = :vacasDeDescarteKg"),
    @NamedQuery(name = "Lv2p3.findByVacaPrenhaKg", query = "SELECT l FROM Lv2p3 l WHERE l.vacaPrenhaKg = :vacaPrenhaKg"),
    @NamedQuery(name = "Lv2p3.findByVacaComCriaKg", query = "SELECT l FROM Lv2p3 l WHERE l.vacaComCriaKg = :vacaComCriaKg"),
    @NamedQuery(name = "Lv2p3.findByVacaGordaKg", query = "SELECT l FROM Lv2p3 l WHERE l.vacaGordaKg = :vacaGordaKg"),
    @NamedQuery(name = "Lv2p3.findByNovilhoPraRecriaKg", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoPraRecriaKg = :novilhoPraRecriaKg"),
    @NamedQuery(name = "Lv2p3.findByNovilhoGordoKg", query = "SELECT l FROM Lv2p3 l WHERE l.novilhoGordoKg = :novilhoGordoKg"),
    @NamedQuery(name = "Lv2p3.findByTorunosKg", query = "SELECT l FROM Lv2p3 l WHERE l.torunosKg = :torunosKg"),
    @NamedQuery(name = "Lv2p3.findByTouroKg", query = "SELECT l FROM Lv2p3 l WHERE l.touroKg = :touroKg")})
public class Lv2p3 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "terneiros_quant")
    private Integer terneirosQuant;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "terneiros_valor")
    private BigDecimal terneirosValor;
    @Basic(optional = false)
    @Column(name = "terneiras_quant")
    private Integer terneirasQuant;
    @Column(name = "terneiras_valor")
    private BigDecimal terneirasValor;
    @Basic(optional = false)
    @Column(name = "novilhas_quant")
    private Integer novilhasQuant;
    @Column(name = "novilhas_valor")
    private BigDecimal novilhasValor;
    @Basic(optional = false)
    @Column(name = "vacas_de_descarte_quant")
    private Integer vacasDeDescarteQuant;
    @Column(name = "vacas_de_descarte_valor")
    private BigDecimal vacasDeDescarteValor;
    @Basic(optional = false)
    @Column(name = "vaca_prenha_quant")
    private Integer vacaPrenhaQuant;
    @Column(name = "vaca_prenha_valor")
    private BigDecimal vacaPrenhaValor;
    @Basic(optional = false)
    @Column(name = "vaca_com_cria_quant")
    private Integer vacaComCriaQuant;
    @Column(name = "vaca_com_cria_valor")
    private BigDecimal vacaComCriaValor;
    @Basic(optional = false)
    @Column(name = "vaca_gorda_quant")
    private Integer vacaGordaQuant;
    @Column(name = "vaca_gorda_valor")
    private BigDecimal vacaGordaValor;
    @Basic(optional = false)
    @Column(name = "novilho_pra_recria_quant")
    private Integer novilhoPraRecriaQuant;
    @Column(name = "novilho_pra_recria_valor")
    private BigDecimal novilhoPraRecriaValor;
    @Basic(optional = false)
    @Column(name = "novilho_gordo_quant")
    private Integer novilhoGordoQuant;
    @Column(name = "novilho_gordo_valor")
    private BigDecimal novilhoGordoValor;
    @Basic(optional = false)
    @Column(name = "torunos_quant")
    private Integer torunosQuant;
    @Column(name = "torunos_valor")
    private BigDecimal torunosValor;
    @Basic(optional = false)
    @Column(name = "touro_quant")
    private Integer touroQuant;
    @Column(name = "touro_valor")
    private BigDecimal touroValor;
    @Column(name = "ano")
    private String ano;
    @Basic(optional = false)
    @Column(name = "terneiros_kg")
    private BigDecimal terneirosKg;
    @Basic(optional = false)
    @Column(name = "terneiras_kg")
    private BigDecimal terneirasKg;
    @Basic(optional = false)
    @Column(name = "novilhas_kg")
    private BigDecimal novilhasKg;
    @Basic(optional = false)
    @Column(name = "vacas_de_descarte_kg")
    private BigDecimal vacasDeDescarteKg;
    @Basic(optional = false)
    @Column(name = "vaca_prenha_kg")
    private BigDecimal vacaPrenhaKg;
    @Basic(optional = false)
    @Column(name = "vaca_com_cria_kg")
    private BigDecimal vacaComCriaKg;
    @Basic(optional = false)
    @Column(name = "vaca_gorda_kg")
    private BigDecimal vacaGordaKg;
    @Basic(optional = false)
    @Column(name = "novilho_pra_recria_kg")
    private BigDecimal novilhoPraRecriaKg;
    @Basic(optional = false)
    @Column(name = "novilho_gordo_kg")
    private BigDecimal novilhoGordoKg;
    @Basic(optional = false)
    @Column(name = "torunos_kg")
    private BigDecimal torunosKg;
    @Basic(optional = false)
    @Column(name = "touro_kg")
    private BigDecimal touroKg;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2p3() {
    }

    public Lv2p3(Integer id, String ano) throws Exception {
        PropriedadeDAO dao = new PropriedadeDAO();
        this.ano = ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);

    }

    public Lv2p3(Integer id) {
        this.id = id;
    }

    public Lv2p3(Integer id, Integer terneirosQuant, Integer terneirasQuant, Integer novilhasQuant, Integer vacasDeDescarteQuant, Integer vacaPrenhaQuant, Integer vacaComCriaQuant, Integer vacaGordaQuant, Integer novilhoPraRecriaQuant, Integer novilhoGordoQuant, Integer torunosQuant, Integer touroQuant, BigDecimal terneirosKg, BigDecimal terneirasKg, BigDecimal novilhasKg, BigDecimal vacasDeDescarteKg, BigDecimal vacaPrenhaKg, BigDecimal vacaComCriaKg, BigDecimal vacaGordaKg, BigDecimal novilhoPraRecriaKg, BigDecimal novilhoGordoKg, BigDecimal torunosKg, BigDecimal touroKg) {
        this.id = id;
        this.terneirosQuant = terneirosQuant;
        this.terneirasQuant = terneirasQuant;
        this.novilhasQuant = novilhasQuant;
        this.vacasDeDescarteQuant = vacasDeDescarteQuant;
        this.vacaPrenhaQuant = vacaPrenhaQuant;
        this.vacaComCriaQuant = vacaComCriaQuant;
        this.vacaGordaQuant = vacaGordaQuant;
        this.novilhoPraRecriaQuant = novilhoPraRecriaQuant;
        this.novilhoGordoQuant = novilhoGordoQuant;
        this.torunosQuant = torunosQuant;
        this.touroQuant = touroQuant;
        this.terneirosKg = terneirosKg;
        this.terneirasKg = terneirasKg;
        this.novilhasKg = novilhasKg;
        this.vacasDeDescarteKg = vacasDeDescarteKg;
        this.vacaPrenhaKg = vacaPrenhaKg;
        this.vacaComCriaKg = vacaComCriaKg;
        this.vacaGordaKg = vacaGordaKg;
        this.novilhoPraRecriaKg = novilhoPraRecriaKg;
        this.novilhoGordoKg = novilhoGordoKg;
        this.torunosKg = torunosKg;
        this.touroKg = touroKg;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTerneirosQuant() {
        return terneirosQuant;
    }

    public void setTerneirosQuant(Integer terneirosQuant) {
        this.terneirosQuant = terneirosQuant;
    }

    public BigDecimal getTerneirosValor() {
        if (terneirosValor != null) {

            terneirosValor = terneirosValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return terneirosValor;
    }

    public void setTerneirosValor(BigDecimal terneirosValor) {
        this.terneirosValor = terneirosValor;
    }

    public Integer getTerneirasQuant() {
        return terneirasQuant;
    }

    public void setTerneirasQuant(Integer terneirasQuant) {
        this.terneirasQuant = terneirasQuant;
    }

    public BigDecimal getTerneirasValor() {
        if (terneirasValor != null) {

            terneirasValor = terneirasValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return terneirasValor;
    }

    public void setTerneirasValor(BigDecimal terneirasValor) {
        this.terneirasValor = terneirasValor;
    }

    public Integer getNovilhasQuant() {
        return novilhasQuant;
    }

    public void setNovilhasQuant(Integer novilhasQuant) {
        this.novilhasQuant = novilhasQuant;
    }

    public BigDecimal getNovilhasValor() {
        if (novilhasValor != null) {

            novilhasValor = novilhasValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhasValor;
    }

    public void setNovilhasValor(BigDecimal novilhasValor) {
        this.novilhasValor = novilhasValor;
    }

    public Integer getVacasDeDescarteQuant() {
        return vacasDeDescarteQuant;
    }

    public void setVacasDeDescarteQuant(Integer vacasDeDescarteQuant) {
        this.vacasDeDescarteQuant = vacasDeDescarteQuant;
    }

    public BigDecimal getVacasDeDescarteValor() {
        if (vacasDeDescarteValor != null) {

            vacasDeDescarteValor = vacasDeDescarteValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacasDeDescarteValor;
    }

    public void setVacasDeDescarteValor(BigDecimal vacasDeDescarteValor) {
        this.vacasDeDescarteValor = vacasDeDescarteValor;
    }

    public Integer getVacaPrenhaQuant() {
        return vacaPrenhaQuant;
    }

    public void setVacaPrenhaQuant(Integer vacaPrenhaQuant) {
        this.vacaPrenhaQuant = vacaPrenhaQuant;
    }

    public BigDecimal getVacaPrenhaValor() {
        if (vacaPrenhaValor != null) {

            vacaPrenhaValor = vacaPrenhaValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaPrenhaValor;
    }

    public void setVacaPrenhaValor(BigDecimal vacaPrenhaValor) {
        this.vacaPrenhaValor = vacaPrenhaValor;
    }

    public Integer getVacaComCriaQuant() {
        return vacaComCriaQuant;
    }

    public void setVacaComCriaQuant(Integer vacaComCriaQuant) {
        this.vacaComCriaQuant = vacaComCriaQuant;
    }

    public BigDecimal getVacaComCriaValor() {
        if (vacaComCriaValor != null) {

            vacaComCriaValor = vacaComCriaValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaComCriaValor;
    }

    public void setVacaComCriaValor(BigDecimal vacaComCriaValor) {
        this.vacaComCriaValor = vacaComCriaValor;
    }

    public Integer getVacaGordaQuant() {
        return vacaGordaQuant;
    }

    public void setVacaGordaQuant(Integer vacaGordaQuant) {
        this.vacaGordaQuant = vacaGordaQuant;
    }

    public BigDecimal getVacaGordaValor() {
        if (vacaGordaValor != null) {

            vacaGordaValor = vacaGordaValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaGordaValor;
    }

    public void setVacaGordaValor(BigDecimal vacaGordaValor) {
        this.vacaGordaValor = vacaGordaValor;
    }

    public Integer getNovilhoPraRecriaQuant() {
        return novilhoPraRecriaQuant;
    }

    public void setNovilhoPraRecriaQuant(Integer novilhoPraRecriaQuant) {
        this.novilhoPraRecriaQuant = novilhoPraRecriaQuant;
    }

    public BigDecimal getNovilhoPraRecriaValor() {
        if (novilhoPraRecriaValor != null) {

            novilhoPraRecriaValor = novilhoPraRecriaValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhoPraRecriaValor;
    }

    public void setNovilhoPraRecriaValor(BigDecimal novilhoPraRecriaValor) {
        this.novilhoPraRecriaValor = novilhoPraRecriaValor;
    }

    public Integer getNovilhoGordoQuant() {
        return novilhoGordoQuant;
    }

    public void setNovilhoGordoQuant(Integer novilhoGordoQuant) {
        this.novilhoGordoQuant = novilhoGordoQuant;
    }

    public BigDecimal getNovilhoGordoValor() {
        if (novilhoGordoValor != null) {

            novilhoGordoValor = novilhoGordoValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhoGordoValor;
    }

    public void setNovilhoGordoValor(BigDecimal novilhoGordoValor) {
        this.novilhoGordoValor = novilhoGordoValor;
    }

    public Integer getTorunosQuant() {
        return torunosQuant;
    }

    public void setTorunosQuant(Integer torunosQuant) {
        this.torunosQuant = torunosQuant;
    }

    public BigDecimal getTorunosValor() {
        if (torunosValor != null) {

            torunosValor = torunosValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return torunosValor;
    }

    public void setTorunosValor(BigDecimal torunosValor) {
        this.torunosValor = torunosValor;
    }

    public Integer getTouroQuant() {
        return touroQuant;
    }

    public void setTouroQuant(Integer touroQuant) {
        this.touroQuant = touroQuant;
    }

    public BigDecimal getTouroValor() {
        if (touroValor != null) {

            touroValor = touroValor.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return touroValor;
    }

    public void setTouroValor(BigDecimal touroValor) {
        this.touroValor = touroValor;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public BigDecimal getTerneirosKg() {
        if (terneirosKg != null) {

            terneirosKg = terneirosKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return terneirosKg;
    }

    public void setTerneirosKg(BigDecimal terneirosKg) {
        this.terneirosKg = terneirosKg;
    }

    public BigDecimal getTerneirasKg() {
        if (terneirasKg != null) {

            terneirasKg = terneirasKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return terneirasKg;
    }

    public void setTerneirasKg(BigDecimal terneirasKg) {
        this.terneirasKg = terneirasKg;
    }

    public BigDecimal getNovilhasKg() {
        if (novilhasKg != null) {

            novilhasKg = novilhasKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhasKg;
    }

    public void setNovilhasKg(BigDecimal novilhasKg) {
        this.novilhasKg = novilhasKg;
    }

    public BigDecimal getVacasDeDescarteKg() {
        if (vacasDeDescarteKg != null) {

            vacasDeDescarteKg = vacasDeDescarteKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacasDeDescarteKg;
    }

    public void setVacasDeDescarteKg(BigDecimal vacasDeDescarteKg) {
        this.vacasDeDescarteKg = vacasDeDescarteKg;
    }

    public BigDecimal getVacaPrenhaKg() {
        if (vacaPrenhaKg != null) {

            vacaPrenhaKg = vacaPrenhaKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaPrenhaKg;
    }

    public void setVacaPrenhaKg(BigDecimal vacaPrenhaKg) {
        this.vacaPrenhaKg = vacaPrenhaKg;
    }

    public BigDecimal getVacaComCriaKg() {
        if (vacaComCriaKg != null) {

            vacaComCriaKg = vacaComCriaKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaComCriaKg;
    }

    public void setVacaComCriaKg(BigDecimal vacaComCriaKg) {
        this.vacaComCriaKg = vacaComCriaKg;
    }

    public BigDecimal getVacaGordaKg() {
        if (vacaGordaKg != null) {

            vacaGordaKg = vacaGordaKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return vacaGordaKg;
    }

    public void setVacaGordaKg(BigDecimal vacaGordaKg) {
        this.vacaGordaKg = vacaGordaKg;
    }

    public BigDecimal getNovilhoPraRecriaKg() {
        if (novilhoPraRecriaKg != null) {

            novilhoPraRecriaKg = novilhoPraRecriaKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhoPraRecriaKg;
    }

    public void setNovilhoPraRecriaKg(BigDecimal novilhoPraRecriaKg) {
        this.novilhoPraRecriaKg = novilhoPraRecriaKg;
    }

    public BigDecimal getNovilhoGordoKg() {
        if (novilhoGordoKg != null) {

            novilhoGordoKg = novilhoGordoKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return novilhoGordoKg;
    }

    public void setNovilhoGordoKg(BigDecimal novilhoGordoKg) {
        this.novilhoGordoKg = novilhoGordoKg;
    }

    public BigDecimal getTorunosKg() {
        if (torunosKg != null) {

            torunosKg = torunosKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return torunosKg;
    }

    public void setTorunosKg(BigDecimal torunosKg) {
        this.torunosKg = torunosKg;
    }

    public BigDecimal getTouroKg() {
        if (touroKg != null) {

            touroKg = touroKg.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return touroKg;
    }

    public void setTouroKg(BigDecimal touroKg) {
        this.touroKg = touroKg;
    }

    public Propriedade getPropriedadeId() {

        return propriedadeId;
    }

    public void setPropriedadeId(Propriedade propriedadeId) {
        this.propriedadeId = propriedadeId;
    }

    @Override
    public int hashCode() {
        Integer hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lv2p3)) {
            return false;
        }
        Lv2p3 other = (Lv2p3) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv2p3[ id=" + id + " ]";
    }

}
