/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Usuario
 */
@Entity
@Table(name = "propriedade")
@XmlRootElement
@NamedQueries({
    
    @NamedQuery(name = "Propriedade.findUsuario",query = "SELECT p from Propriedade p where p.usuarioId.id = :usuarioId"),
    @NamedQuery(name = "Propriedade.findAll", query = "SELECT p FROM Propriedade p"),
    @NamedQuery(name = "Propriedade.findById", query = "SELECT p FROM Propriedade p WHERE p.id = :id"),
    @NamedQuery(name = "Propriedade.findByNome", query = "SELECT p FROM Propriedade p WHERE p.nome = :nome"),
    @NamedQuery(name = "Propriedade.findByCidade", query = "SELECT p FROM Propriedade p WHERE p.cidade = :cidade"),
    @NamedQuery(name = "Propriedade.findByUf", query = "SELECT p FROM Propriedade p WHERE p.uf = :uf")})
public class Propriedade implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Column(name = "cidade")
    private String cidade;
    @Column(name = "uf")
    private String uf;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv1p1> lv1p1List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv1p2> lv1p2List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv2p1> lv2p1List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv1p3> lv1p3List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv2p2> lv2p2List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv1p4> lv1p4List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv2p3> lv2p3List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv2p4> lv2p4List;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv2resultado> lv2resultadoList;
    @JoinColumn(name = "usuario_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario usuarioId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "propriedadeId")
    private List<Lv1resultado> lv1resultadoList;

    public Propriedade() {
    }

    public Propriedade(Integer id) {
        this.id = id;
    }

    public Propriedade(Integer id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    @XmlTransient
    public List<Lv1p1> getLv1p1List() {
        return lv1p1List;
    }

    public void setLv1p1List(List<Lv1p1> lv1p1List) {
        this.lv1p1List = lv1p1List;
    }

    @XmlTransient
    public List<Lv1p2> getLv1p2List() {
        return lv1p2List;
    }

    public void setLv1p2List(List<Lv1p2> lv1p2List) {
        this.lv1p2List = lv1p2List;
    }

    @XmlTransient
    public List<Lv2p1> getLv2p1List() {
        return lv2p1List;
    }

    public void setLv2p1List(List<Lv2p1> lv2p1List) {
        this.lv2p1List = lv2p1List;
    }

    @XmlTransient
    public List<Lv1p3> getLv1p3List() {
        return lv1p3List;
    }

    public void setLv1p3List(List<Lv1p3> lv1p3List) {
        this.lv1p3List = lv1p3List;
    }

    @XmlTransient
    public List<Lv2p2> getLv2p2List() {
        return lv2p2List;
    }

    public void setLv2p2List(List<Lv2p2> lv2p2List) {
        this.lv2p2List = lv2p2List;
    }

    @XmlTransient
    public List<Lv1p4> getLv1p4List() {
        return lv1p4List;
    }

    public void setLv1p4List(List<Lv1p4> lv1p4List) {
        this.lv1p4List = lv1p4List;
    }

    @XmlTransient
    public List<Lv2p3> getLv2p3List() {
        return lv2p3List;
    }

    public void setLv2p3List(List<Lv2p3> lv2p3List) {
        this.lv2p3List = lv2p3List;
    }

    @XmlTransient
    public List<Lv2p4> getLv2p4List() {
        return lv2p4List;
    }

    public void setLv2p4List(List<Lv2p4> lv2p4List) {
        this.lv2p4List = lv2p4List;
    }

    @XmlTransient
    public List<Lv2resultado> getLv2resultadoList() {
        return lv2resultadoList;
    }

    public void setLv2resultadoList(List<Lv2resultado> lv2resultadoList) {
        this.lv2resultadoList = lv2resultadoList;
    }

    public Usuario getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(Usuario usuarioId) {
        this.usuarioId = usuarioId;
    }

    @XmlTransient
    public List<Lv1resultado> getLv1resultadoList() {
        return lv1resultadoList;
    }

    public void setLv1resultadoList(List<Lv1resultado> lv1resultadoList) {
        this.lv1resultadoList = lv1resultadoList;
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
        if (!(object instanceof Propriedade)) {
            return false;
        }
        Propriedade other = (Propriedade) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Propriedade[ id=" + id + " ]";
    }
    
}
