/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.PropriedadeDAO;
import java.io.Serializable;
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
@Table(name = "lv2p2")
@XmlRootElement
@NamedQueries({
    
        @NamedQuery(name = "Lv2p2.findPropriedade", query="SELECT l FROM Lv2p2 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv2p2.findAll", query = "SELECT l FROM Lv2p2 l"),
    @NamedQuery(name = "Lv2p2.findById", query = "SELECT l FROM Lv2p2 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2p2.findByVacaDeCriaJanmar", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeCriaJanmar = :vacaDeCriaJanmar"),
    @NamedQuery(name = "Lv2p2.findByVacaDeCriaAbrjun", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeCriaAbrjun = :vacaDeCriaAbrjun"),
    @NamedQuery(name = "Lv2p2.findByVacaDeCriaJulset", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeCriaJulset = :vacaDeCriaJulset"),
    @NamedQuery(name = "Lv2p2.findByVacaDeCriaOutdez", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeCriaOutdez = :vacaDeCriaOutdez"),
    @NamedQuery(name = "Lv2p2.findByVacaDeDescarteJanmar", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeDescarteJanmar = :vacaDeDescarteJanmar"),
    @NamedQuery(name = "Lv2p2.findByVacaDeDescarteAbrjun", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeDescarteAbrjun = :vacaDeDescarteAbrjun"),
    @NamedQuery(name = "Lv2p2.findByVacaDeDescarteJulset", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeDescarteJulset = :vacaDeDescarteJulset"),
    @NamedQuery(name = "Lv2p2.findByVacaDeDescarteOutdez", query = "SELECT l FROM Lv2p2 l WHERE l.vacaDeDescarteOutdez = :vacaDeDescarteOutdez"),
    @NamedQuery(name = "Lv2p2.findByTerneirosJanmar", query = "SELECT l FROM Lv2p2 l WHERE l.terneirosJanmar = :terneirosJanmar"),
    @NamedQuery(name = "Lv2p2.findByTerneirosAbrjun", query = "SELECT l FROM Lv2p2 l WHERE l.terneirosAbrjun = :terneirosAbrjun"),
    @NamedQuery(name = "Lv2p2.findByTerneirosJulset", query = "SELECT l FROM Lv2p2 l WHERE l.terneirosJulset = :terneirosJulset"),
    @NamedQuery(name = "Lv2p2.findByTerneirosOutdez", query = "SELECT l FROM Lv2p2 l WHERE l.terneirosOutdez = :terneirosOutdez"),
    @NamedQuery(name = "Lv2p2.findByTerneirasJanmar", query = "SELECT l FROM Lv2p2 l WHERE l.terneirasJanmar = :terneirasJanmar"),
    @NamedQuery(name = "Lv2p2.findByTerneirasAbrjun", query = "SELECT l FROM Lv2p2 l WHERE l.terneirasAbrjun = :terneirasAbrjun"),
    @NamedQuery(name = "Lv2p2.findByTerneirasJulset", query = "SELECT l FROM Lv2p2 l WHERE l.terneirasJulset = :terneirasJulset"),
    @NamedQuery(name = "Lv2p2.findByTerneirasOutdez", query = "SELECT l FROM Lv2p2 l WHERE l.terneirasOutdez = :terneirasOutdez"),
    @NamedQuery(name = "Lv2p2.findByNovilhos13a24Janmar", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos13a24Janmar = :novilhos13a24Janmar"),
    @NamedQuery(name = "Lv2p2.findByNovilhos13a24Abrjun", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos13a24Abrjun = :novilhos13a24Abrjun"),
    @NamedQuery(name = "Lv2p2.findByNovilhos13a24Julset", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos13a24Julset = :novilhos13a24Julset"),
    @NamedQuery(name = "Lv2p2.findByNovilhos13a24Outdez", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos13a24Outdez = :novilhos13a24Outdez"),
    @NamedQuery(name = "Lv2p2.findByNovilhas13a24Janmar", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas13a24Janmar = :novilhas13a24Janmar"),
    @NamedQuery(name = "Lv2p2.findByNovilhas13a24Abrjun", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas13a24Abrjun = :novilhas13a24Abrjun"),
    @NamedQuery(name = "Lv2p2.findByNovilhas13a24Julset", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas13a24Julset = :novilhas13a24Julset"),
    @NamedQuery(name = "Lv2p2.findByNovilhas13a24Outdez", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas13a24Outdez = :novilhas13a24Outdez"),
    @NamedQuery(name = "Lv2p2.findByNovilhos25a36Janmar", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos25a36Janmar = :novilhos25a36Janmar"),
    @NamedQuery(name = "Lv2p2.findByNovilhos25a36Abrjun", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos25a36Abrjun = :novilhos25a36Abrjun"),
    @NamedQuery(name = "Lv2p2.findByNovilhos25a36Julset", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos25a36Julset = :novilhos25a36Julset"),
    @NamedQuery(name = "Lv2p2.findByNovilhos25a36Outdez", query = "SELECT l FROM Lv2p2 l WHERE l.novilhos25a36Outdez = :novilhos25a36Outdez"),
    @NamedQuery(name = "Lv2p2.findByNovilhas25a36Janmar", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas25a36Janmar = :novilhas25a36Janmar"),
    @NamedQuery(name = "Lv2p2.findByNovilhas25a36Abrjun", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas25a36Abrjun = :novilhas25a36Abrjun"),
    @NamedQuery(name = "Lv2p2.findByNovilhas25a36Julset", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas25a36Julset = :novilhas25a36Julset"),
    @NamedQuery(name = "Lv2p2.findByNovilhas25a36Outdez", query = "SELECT l FROM Lv2p2 l WHERE l.novilhas25a36Outdez = :novilhas25a36Outdez"),
    @NamedQuery(name = "Lv2p2.findByNovilho36Janmar", query = "SELECT l FROM Lv2p2 l WHERE l.novilho36Janmar = :novilho36Janmar"),
    @NamedQuery(name = "Lv2p2.findByNovilho36Abrjun", query = "SELECT l FROM Lv2p2 l WHERE l.novilho36Abrjun = :novilho36Abrjun"),
    @NamedQuery(name = "Lv2p2.findByNovilho36Julset", query = "SELECT l FROM Lv2p2 l WHERE l.novilho36Julset = :novilho36Julset"),
    @NamedQuery(name = "Lv2p2.findByNovilho36Outdez", query = "SELECT l FROM Lv2p2 l WHERE l.novilho36Outdez = :novilho36Outdez"),
    @NamedQuery(name = "Lv2p2.findByTouroJanmar", query = "SELECT l FROM Lv2p2 l WHERE l.touroJanmar = :touroJanmar"),
    @NamedQuery(name = "Lv2p2.findByTouroAbrjun", query = "SELECT l FROM Lv2p2 l WHERE l.touroAbrjun = :touroAbrjun"),
    @NamedQuery(name = "Lv2p2.findByTouroJulset", query = "SELECT l FROM Lv2p2 l WHERE l.touroJulset = :touroJulset"),
    @NamedQuery(name = "Lv2p2.findByTouroOutdez", query = "SELECT l FROM Lv2p2 l WHERE l.touroOutdez = :touroOutdez"),
    @NamedQuery(name = "Lv2p2.findByAno", query = "SELECT l FROM Lv2p2 l WHERE l.ano = :ano")})
public class Lv2p2 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "vaca_de_cria_janmar")
    private Integer vacaDeCriaJanmar;
    @Basic(optional = false)
    @Column(name = "vaca_de_cria_abrjun")
    private Integer vacaDeCriaAbrjun;
    @Basic(optional = false)
    @Column(name = "vaca_de_cria_julset")
    private Integer vacaDeCriaJulset;
    @Basic(optional = false)
    @Column(name = "vaca_de_cria_outdez")
    private Integer vacaDeCriaOutdez;
    @Basic(optional = false)
    @Column(name = "vaca_de_descarte_janmar")
    private Integer vacaDeDescarteJanmar;
    @Basic(optional = false)
    @Column(name = "vaca_de_descarte_abrjun")
    private Integer vacaDeDescarteAbrjun;
    @Basic(optional = false)
    @Column(name = "vaca_de_descarte_julset")
    private Integer vacaDeDescarteJulset;
    @Basic(optional = false)
    @Column(name = "vaca_de_descarte_outdez")
    private Integer vacaDeDescarteOutdez;
    @Basic(optional = false)
    @Column(name = "terneiros_janmar")
    private Integer terneirosJanmar;
    @Basic(optional = false)
    @Column(name = "terneiros_abrjun")
    private Integer terneirosAbrjun;
    @Basic(optional = false)
    @Column(name = "terneiros_julset")
    private Integer terneirosJulset;
    @Basic(optional = false)
    @Column(name = "terneiros_outdez")
    private Integer terneirosOutdez;
    @Basic(optional = false)
    @Column(name = "terneiras_janmar")
    private Integer terneirasJanmar;
    @Basic(optional = false)
    @Column(name = "terneiras_abrjun")
    private Integer terneirasAbrjun;
    @Basic(optional = false)
    @Column(name = "terneiras_julset")
    private Integer terneirasJulset;
    @Basic(optional = false)
    @Column(name = "terneiras_outdez")
    private Integer terneirasOutdez;
    @Basic(optional = false)
    @Column(name = "novilhos_13a24_janmar")
    private Integer novilhos13a24Janmar;
    @Basic(optional = false)
    @Column(name = "novilhos_13a24_abrjun")
    private Integer novilhos13a24Abrjun;
    @Basic(optional = false)
    @Column(name = "novilhos_13a24_julset")
    private Integer novilhos13a24Julset;
    @Basic(optional = false)
    @Column(name = "novilhos_13a24_outdez")
    private Integer novilhos13a24Outdez;
    @Basic(optional = false)
    @Column(name = "novilhas_13a24_janmar")
    private Integer novilhas13a24Janmar;
    @Basic(optional = false)
    @Column(name = "novilhas_13a24_abrjun")
    private Integer novilhas13a24Abrjun;
    @Basic(optional = false)
    @Column(name = "novilhas_13a24_julset")
    private Integer novilhas13a24Julset;
    @Basic(optional = false)
    @Column(name = "novilhas_13a24_outdez")
    private Integer novilhas13a24Outdez;
    @Basic(optional = false)
    @Column(name = "novilhos_25a36_janmar")
    private Integer novilhos25a36Janmar;
    @Basic(optional = false)
    @Column(name = "novilhos_25a36_abrjun")
    private Integer novilhos25a36Abrjun;
    @Basic(optional = false)
    @Column(name = "novilhos_25a36_julset")
    private Integer novilhos25a36Julset;
    @Basic(optional = false)
    @Column(name = "novilhos_25a36_outdez")
    private Integer novilhos25a36Outdez;
    @Basic(optional = false)
    @Column(name = "novilhas_25a36_janmar")
    private Integer novilhas25a36Janmar;
    @Basic(optional = false)
    @Column(name = "novilhas_25a36_abrjun")
    private Integer novilhas25a36Abrjun;
    @Basic(optional = false)
    @Column(name = "novilhas_25a36_julset")
    private Integer novilhas25a36Julset;
    @Basic(optional = false)
    @Column(name = "novilhas_25a36_outdez")
    private Integer novilhas25a36Outdez;
    @Basic(optional = false)
    @Column(name = "novilho_36_janmar")
    private Integer novilho36Janmar;
    @Basic(optional = false)
    @Column(name = "novilho_36_abrjun")
    private Integer novilho36Abrjun;
    @Basic(optional = false)
    @Column(name = "novilho_36_julset")
    private Integer novilho36Julset;
    @Basic(optional = false)
    @Column(name = "novilho_36_outdez")
    private Integer novilho36Outdez;
    @Basic(optional = false)
    @Column(name = "touro_janmar")
    private Integer touroJanmar;
    @Basic(optional = false)
    @Column(name = "touro_abrjun")
    private Integer touroAbrjun;
    @Basic(optional = false)
    @Column(name = "touro_julset")
    private Integer touroJulset;
    @Basic(optional = false)
    @Column(name = "touro_outdez")
    private Integer touroOutdez;
    @Column(name = "ano")
    private String ano;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2p2() {
    }
    
    public Lv2p2(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }

    public Lv2p2(Integer id) {
        this.id = id;
    }

    public Lv2p2(Integer id, Integer vacaDeCriaJanmar, Integer vacaDeCriaAbrjun, Integer vacaDeCriaJulset, Integer vacaDeCriaOutdez, Integer vacaDeDescarteJanmar, Integer vacaDeDescarteAbrjun, Integer vacaDeDescarteJulset, Integer vacaDeDescarteOutdez, Integer terneirosJanmar, Integer terneirosAbrjun, Integer terneirosJulset, Integer terneirosOutdez, Integer terneirasJanmar, Integer terneirasAbrjun, Integer terneirasJulset, Integer terneirasOutdez, Integer novilhos13a24Janmar, Integer novilhos13a24Abrjun, Integer novilhos13a24Julset, Integer novilhos13a24Outdez, Integer novilhas13a24Janmar, Integer novilhas13a24Abrjun, Integer novilhas13a24Julset, Integer novilhas13a24Outdez, Integer novilhos25a36Janmar, Integer novilhos25a36Abrjun, Integer novilhos25a36Julset, Integer novilhos25a36Outdez, Integer novilhas25a36Janmar, Integer novilhas25a36Abrjun, Integer novilhas25a36Julset, Integer novilhas25a36Outdez, Integer novilho36Janmar, Integer novilho36Abrjun, Integer novilho36Julset, Integer novilho36Outdez, Integer touroJanmar, Integer touroAbrjun, Integer touroJulset, Integer touroOutdez) {
        this.id = id;
        this.vacaDeCriaJanmar = vacaDeCriaJanmar;
        this.vacaDeCriaAbrjun = vacaDeCriaAbrjun;
        this.vacaDeCriaJulset = vacaDeCriaJulset;
        this.vacaDeCriaOutdez = vacaDeCriaOutdez;
        this.vacaDeDescarteJanmar = vacaDeDescarteJanmar;
        this.vacaDeDescarteAbrjun = vacaDeDescarteAbrjun;
        this.vacaDeDescarteJulset = vacaDeDescarteJulset;
        this.vacaDeDescarteOutdez = vacaDeDescarteOutdez;
        this.terneirosJanmar = terneirosJanmar;
        this.terneirosAbrjun = terneirosAbrjun;
        this.terneirosJulset = terneirosJulset;
        this.terneirosOutdez = terneirosOutdez;
        this.terneirasJanmar = terneirasJanmar;
        this.terneirasAbrjun = terneirasAbrjun;
        this.terneirasJulset = terneirasJulset;
        this.terneirasOutdez = terneirasOutdez;
        this.novilhos13a24Janmar = novilhos13a24Janmar;
        this.novilhos13a24Abrjun = novilhos13a24Abrjun;
        this.novilhos13a24Julset = novilhos13a24Julset;
        this.novilhos13a24Outdez = novilhos13a24Outdez;
        this.novilhas13a24Janmar = novilhas13a24Janmar;
        this.novilhas13a24Abrjun = novilhas13a24Abrjun;
        this.novilhas13a24Julset = novilhas13a24Julset;
        this.novilhas13a24Outdez = novilhas13a24Outdez;
        this.novilhos25a36Janmar = novilhos25a36Janmar;
        this.novilhos25a36Abrjun = novilhos25a36Abrjun;
        this.novilhos25a36Julset = novilhos25a36Julset;
        this.novilhos25a36Outdez = novilhos25a36Outdez;
        this.novilhas25a36Janmar = novilhas25a36Janmar;
        this.novilhas25a36Abrjun = novilhas25a36Abrjun;
        this.novilhas25a36Julset = novilhas25a36Julset;
        this.novilhas25a36Outdez = novilhas25a36Outdez;
        this.novilho36Janmar = novilho36Janmar;
        this.novilho36Abrjun = novilho36Abrjun;
        this.novilho36Julset = novilho36Julset;
        this.novilho36Outdez = novilho36Outdez;
        this.touroJanmar = touroJanmar;
        this.touroAbrjun = touroAbrjun;
        this.touroJulset = touroJulset;
        this.touroOutdez = touroOutdez;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getVacaDeCriaJanmar() {
        return vacaDeCriaJanmar;
    }

    public void setVacaDeCriaJanmar(Integer vacaDeCriaJanmar) {
        this.vacaDeCriaJanmar = vacaDeCriaJanmar;
    }

    public Integer getVacaDeCriaAbrjun() {
        return vacaDeCriaAbrjun;
    }

    public void setVacaDeCriaAbrjun(Integer vacaDeCriaAbrjun) {
        this.vacaDeCriaAbrjun = vacaDeCriaAbrjun;
    }

    public Integer getVacaDeCriaJulset() {
        return vacaDeCriaJulset;
    }

    public void setVacaDeCriaJulset(Integer vacaDeCriaJulset) {
        this.vacaDeCriaJulset = vacaDeCriaJulset;
    }

    public Integer getVacaDeCriaOutdez() {
        return vacaDeCriaOutdez;
    }

    public void setVacaDeCriaOutdez(Integer vacaDeCriaOutdez) {
        this.vacaDeCriaOutdez = vacaDeCriaOutdez;
    }

    public Integer getVacaDeDescarteJanmar() {
        return vacaDeDescarteJanmar;
    }

    public void setVacaDeDescarteJanmar(Integer vacaDeDescarteJanmar) {
        this.vacaDeDescarteJanmar = vacaDeDescarteJanmar;
    }

    public Integer getVacaDeDescarteAbrjun() {
        return vacaDeDescarteAbrjun;
    }

    public void setVacaDeDescarteAbrjun(Integer vacaDeDescarteAbrjun) {
        this.vacaDeDescarteAbrjun = vacaDeDescarteAbrjun;
    }

    public Integer getVacaDeDescarteJulset() {
        return vacaDeDescarteJulset;
    }

    public void setVacaDeDescarteJulset(Integer vacaDeDescarteJulset) {
        this.vacaDeDescarteJulset = vacaDeDescarteJulset;
    }

    public Integer getVacaDeDescarteOutdez() {
        return vacaDeDescarteOutdez;
    }

    public void setVacaDeDescarteOutdez(Integer vacaDeDescarteOutdez) {
        this.vacaDeDescarteOutdez = vacaDeDescarteOutdez;
    }

    public Integer getTerneirosJanmar() {
        return terneirosJanmar;
    }

    public void setTerneirosJanmar(Integer terneirosJanmar) {
        this.terneirosJanmar = terneirosJanmar;
    }

    public Integer getTerneirosAbrjun() {
        return terneirosAbrjun;
    }

    public void setTerneirosAbrjun(Integer terneirosAbrjun) {
        this.terneirosAbrjun = terneirosAbrjun;
    }

    public Integer getTerneirosJulset() {
        return terneirosJulset;
    }

    public void setTerneirosJulset(Integer terneirosJulset) {
        this.terneirosJulset = terneirosJulset;
    }

    public Integer getTerneirosOutdez() {
        return terneirosOutdez;
    }

    public void setTerneirosOutdez(Integer terneirosOutdez) {
        this.terneirosOutdez = terneirosOutdez;
    }

    public Integer getTerneirasJanmar() {
        return terneirasJanmar;
    }

    public void setTerneirasJanmar(Integer terneirasJanmar) {
        this.terneirasJanmar = terneirasJanmar;
    }

    public Integer getTerneirasAbrjun() {
        return terneirasAbrjun;
    }

    public void setTerneirasAbrjun(Integer terneirasAbrjun) {
        this.terneirasAbrjun = terneirasAbrjun;
    }

    public Integer getTerneirasJulset() {
        return terneirasJulset;
    }

    public void setTerneirasJulset(Integer terneirasJulset) {
        this.terneirasJulset = terneirasJulset;
    }

    public Integer getTerneirasOutdez() {
        return terneirasOutdez;
    }

    public void setTerneirasOutdez(Integer terneirasOutdez) {
        this.terneirasOutdez = terneirasOutdez;
    }

    public Integer getNovilhos13a24Janmar() {
        return novilhos13a24Janmar;
    }

    public void setNovilhos13a24Janmar(Integer novilhos13a24Janmar) {
        this.novilhos13a24Janmar = novilhos13a24Janmar;
    }

    public Integer getNovilhos13a24Abrjun() {
        return novilhos13a24Abrjun;
    }

    public void setNovilhos13a24Abrjun(Integer novilhos13a24Abrjun) {
        this.novilhos13a24Abrjun = novilhos13a24Abrjun;
    }

    public Integer getNovilhos13a24Julset() {
        return novilhos13a24Julset;
    }

    public void setNovilhos13a24Julset(Integer novilhos13a24Julset) {
        this.novilhos13a24Julset = novilhos13a24Julset;
    }

    public Integer getNovilhos13a24Outdez() {
        return novilhos13a24Outdez;
    }

    public void setNovilhos13a24Outdez(Integer novilhos13a24Outdez) {
        this.novilhos13a24Outdez = novilhos13a24Outdez;
    }

    public Integer getNovilhas13a24Janmar() {
        return novilhas13a24Janmar;
    }

    public void setNovilhas13a24Janmar(Integer novilhas13a24Janmar) {
        this.novilhas13a24Janmar = novilhas13a24Janmar;
    }

    public Integer getNovilhas13a24Abrjun() {
        return novilhas13a24Abrjun;
    }

    public void setNovilhas13a24Abrjun(Integer novilhas13a24Abrjun) {
        this.novilhas13a24Abrjun = novilhas13a24Abrjun;
    }

    public Integer getNovilhas13a24Julset() {
        return novilhas13a24Julset;
    }

    public void setNovilhas13a24Julset(Integer novilhas13a24Julset) {
        this.novilhas13a24Julset = novilhas13a24Julset;
    }

    public Integer getNovilhas13a24Outdez() {
        return novilhas13a24Outdez;
    }

    public void setNovilhas13a24Outdez(Integer novilhas13a24Outdez) {
        this.novilhas13a24Outdez = novilhas13a24Outdez;
    }

    public Integer getNovilhos25a36Janmar() {
        return novilhos25a36Janmar;
    }

    public void setNovilhos25a36Janmar(Integer novilhos25a36Janmar) {
        this.novilhos25a36Janmar = novilhos25a36Janmar;
    }

    public Integer getNovilhos25a36Abrjun() {
        return novilhos25a36Abrjun;
    }

    public void setNovilhos25a36Abrjun(Integer novilhos25a36Abrjun) {
        this.novilhos25a36Abrjun = novilhos25a36Abrjun;
    }

    public Integer getNovilhos25a36Julset() {
        return novilhos25a36Julset;
    }

    public void setNovilhos25a36Julset(Integer novilhos25a36Julset) {
        this.novilhos25a36Julset = novilhos25a36Julset;
    }

    public Integer getNovilhos25a36Outdez() {
        return novilhos25a36Outdez;
    }

    public void setNovilhos25a36Outdez(Integer novilhos25a36Outdez) {
        this.novilhos25a36Outdez = novilhos25a36Outdez;
    }

    public Integer getNovilhas25a36Janmar() {
        return novilhas25a36Janmar;
    }

    public void setNovilhas25a36Janmar(Integer novilhas25a36Janmar) {
        this.novilhas25a36Janmar = novilhas25a36Janmar;
    }

    public Integer getNovilhas25a36Abrjun() {
        return novilhas25a36Abrjun;
    }

    public void setNovilhas25a36Abrjun(Integer novilhas25a36Abrjun) {
        this.novilhas25a36Abrjun = novilhas25a36Abrjun;
    }

    public Integer getNovilhas25a36Julset() {
        return novilhas25a36Julset;
    }

    public void setNovilhas25a36Julset(Integer novilhas25a36Julset) {
        this.novilhas25a36Julset = novilhas25a36Julset;
    }

    public Integer getNovilhas25a36Outdez() {
        return novilhas25a36Outdez;
    }

    public void setNovilhas25a36Outdez(Integer novilhas25a36Outdez) {
        this.novilhas25a36Outdez = novilhas25a36Outdez;
    }

    public Integer getNovilho36Janmar() {
        return novilho36Janmar;
    }

    public void setNovilho36Janmar(Integer novilho36Janmar) {
        this.novilho36Janmar = novilho36Janmar;
    }

    public Integer getNovilho36Abrjun() {
        return novilho36Abrjun;
    }

    public void setNovilho36Abrjun(Integer novilho36Abrjun) {
        this.novilho36Abrjun = novilho36Abrjun;
    }

    public Integer getNovilho36Julset() {
        return novilho36Julset;
    }

    public void setNovilho36Julset(Integer novilho36Julset) {
        this.novilho36Julset = novilho36Julset;
    }

    public Integer getNovilho36Outdez() {
        return novilho36Outdez;
    }

    public void setNovilho36Outdez(Integer novilho36Outdez) {
        this.novilho36Outdez = novilho36Outdez;
    }

    public Integer getTouroJanmar() {
        return touroJanmar;
    }

    public void setTouroJanmar(Integer touroJanmar) {
        this.touroJanmar = touroJanmar;
    }

    public Integer getTouroAbrjun() {
        return touroAbrjun;
    }

    public void setTouroAbrjun(Integer touroAbrjun) {
        this.touroAbrjun = touroAbrjun;
    }

    public Integer getTouroJulset() {
        return touroJulset;
    }

    public void setTouroJulset(Integer touroJulset) {
        this.touroJulset = touroJulset;
    }

    public Integer getTouroOutdez() {
        return touroOutdez;
    }

    public void setTouroOutdez(Integer touroOutdez) {
        this.touroOutdez = touroOutdez;
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
        Integer hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lv2p2)) {
            return false;
        }
        Lv2p2 other = (Lv2p2) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv2p2[ id=" + id + " ]";
    }
    
}
