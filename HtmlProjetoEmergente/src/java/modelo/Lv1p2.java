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
@Table(name = "lv1p2")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Lv1p2.findPropriedade", query = "SELECT l FROM Lv1p2 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv1p2.findAll", query = "SELECT l FROM Lv1p2 l"),
    @NamedQuery(name = "Lv1p2.findById", query = "SELECT l FROM Lv1p2 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv1p2.findByVacaDeCria", query = "SELECT l FROM Lv1p2 l WHERE l.vacaDeCria = :vacaDeCria"),
    @NamedQuery(name = "Lv1p2.findByVacaDeDescarte", query = "SELECT l FROM Lv1p2 l WHERE l.vacaDeDescarte = :vacaDeDescarte"),
    @NamedQuery(name = "Lv1p2.findByTerneiro", query = "SELECT l FROM Lv1p2 l WHERE l.terneiro = :terneiro"),
    @NamedQuery(name = "Lv1p2.findByTerneira", query = "SELECT l FROM Lv1p2 l WHERE l.terneira = :terneira"),
    @NamedQuery(name = "Lv1p2.findByNovilho13a24", query = "SELECT l FROM Lv1p2 l WHERE l.novilho13a24 = :novilho13a24"),
    @NamedQuery(name = "Lv1p2.findByNovilha13a24", query = "SELECT l FROM Lv1p2 l WHERE l.novilha13a24 = :novilha13a24"),
    @NamedQuery(name = "Lv1p2.findByNovilho25a36", query = "SELECT l FROM Lv1p2 l WHERE l.novilho25a36 = :novilho25a36"),
    @NamedQuery(name = "Lv1p2.findByNovilha25a36", query = "SELECT l FROM Lv1p2 l WHERE l.novilha25a36 = :novilha25a36"),
    @NamedQuery(name = "Lv1p2.findByNovilho36", query = "SELECT l FROM Lv1p2 l WHERE l.novilho36 = :novilho36"),
    @NamedQuery(name = "Lv1p2.findByTouro", query = "SELECT l FROM Lv1p2 l WHERE l.touro = :touro"),
    @NamedQuery(name = "Lv1p2.findByAno", query = "SELECT l FROM Lv1p2 l WHERE l.ano = :ano"),
    @NamedQuery(name = "Lv1p2.findByNovilha36", query = "SELECT l FROM Lv1p2 l WHERE l.novilha36 = :novilha36")})
public class Lv1p2 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "vaca_de_cria")
    private Integer vacaDeCria;
    @Column(name = "vaca_de_descarte")
    private Integer vacaDeDescarte;
    @Column(name = "terneiro")
    private Integer terneiro;
    @Column(name = "terneira")
    private Integer terneira;
    @Column(name = "novilho_13a24")
    private Integer novilho13a24;
    @Column(name = "novilha_13a24")
    private Integer novilha13a24;
    @Column(name = "novilho_25a36")
    private Integer novilho25a36;
    @Column(name = "novilha_25a36")
    private Integer novilha25a36;
    @Column(name = "novilho_36")
    private Integer novilho36;
    @Column(name = "touro")
    private Integer touro;
    @Column(name = "ano")
    private String ano;
    @Column(name = "novilha_36")
    private Integer novilha36;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv1p2() {
    }

    public Lv1p2(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }
    
    public Lv1p2(Integer id) {
        this.id = id;
    }

    public Lv1p2(Integer id, int novilha36) {
        this.id = id;
        this.novilha36 = novilha36;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getVacaDeCria() {
        return vacaDeCria;
    }

    public void setVacaDeCria(Integer vacaDeCria) {
        this.vacaDeCria = vacaDeCria;
    }

    public Integer getVacaDeDescarte() {
        return vacaDeDescarte;
    }

    public void setVacaDeDescarte(Integer vacaDeDescarte) {
        this.vacaDeDescarte = vacaDeDescarte;
    }

    public Integer getTerneiro() {
        return terneiro;
    }

    public void setTerneiro(Integer terneiro) {
        this.terneiro = terneiro;
    }

    public Integer getTerneira() {
        return terneira;
    }

    public void setTerneira(Integer terneira) {
        this.terneira = terneira;
    }

    public Integer getNovilho13a24() {
        return novilho13a24;
    }

    public void setNovilho13a24(Integer novilho13a24) {
        this.novilho13a24 = novilho13a24;
    }

    public Integer getNovilha13a24() {
        return novilha13a24;
    }

    public void setNovilha13a24(Integer novilha13a24) {
        this.novilha13a24 = novilha13a24;
    }

    public Integer getNovilho25a36() {
        return novilho25a36;
    }

    public void setNovilho25a36(Integer novilho25a36) {
        this.novilho25a36 = novilho25a36;
    }

    public Integer getNovilha25a36() {
        return novilha25a36;
    }

    public void setNovilha25a36(Integer novilha25a36) {
        this.novilha25a36 = novilha25a36;
    }

    public Integer getNovilho36() {
        return novilho36;
    }

    public void setNovilho36(Integer novilho36) {
        this.novilho36 = novilho36;
    }

    public Integer getTouro() {
        return touro;
    }

    public void setTouro(Integer touro) {
        this.touro = touro;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public Integer getNovilha36() {
        return novilha36;
    }

    public void setNovilha36(Integer novilha36) {
        this.novilha36 = novilha36;
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
        if (!(object instanceof Lv1p2)) {
            return false;
        }
        Lv1p2 other = (Lv1p2) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv1p2[ id=" + id + " ]";
    }

}
