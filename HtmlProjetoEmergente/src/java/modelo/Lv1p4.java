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
@Table(name = "lv1p4")
@XmlRootElement
@NamedQueries({
    
        @NamedQuery(name = "Lv1p4.findPropriedade", query="SELECT l FROM Lv1p4 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    @NamedQuery(name = "Lv1p4.findAll", query = "SELECT l FROM Lv1p4 l"),
    @NamedQuery(name = "Lv1p4.findById", query = "SELECT l FROM Lv1p4 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv1p4.findByMedicamento", query = "SELECT l FROM Lv1p4 l WHERE l.medicamento = :medicamento"),
    @NamedQuery(name = "Lv1p4.findByMaoDeObra", query = "SELECT l FROM Lv1p4 l WHERE l.maoDeObra = :maoDeObra"),
    @NamedQuery(name = "Lv1p4.findByMaquinas", query = "SELECT l FROM Lv1p4 l WHERE l.maquinas = :maquinas"),
    @NamedQuery(name = "Lv1p4.findByPastagem", query = "SELECT l FROM Lv1p4 l WHERE l.pastagem = :pastagem"),
    @NamedQuery(name = "Lv1p4.findByAno", query = "SELECT l FROM Lv1p4 l WHERE l.ano = :ano"),
    @NamedQuery(name = "Lv1p4.findByOutros", query = "SELECT l FROM Lv1p4 l WHERE l.outros = :outros")})
public class Lv1p4 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "medicamento")
    private BigDecimal medicamento;
    @Basic(optional = false)
    @Column(name = "mao_de_obra")
    private BigDecimal maoDeObra;
    @Basic(optional = false)
    @Column(name = "maquinas")
    private BigDecimal maquinas;
    @Basic(optional = false)
    @Column(name = "pastagem")
    private BigDecimal pastagem;
    @Column(name = "ano")
    private String ano;
    @Basic(optional = false)
    @Column(name = "outros")
    private BigDecimal outros;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv1p4() {
    }
    
    public Lv1p4(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }

    public Lv1p4(Integer id) {
        this.id = id;
    }

    public Lv1p4(Integer id, BigDecimal medicamento, BigDecimal maoDeObra, BigDecimal maquinas, BigDecimal pastagem, BigDecimal outros) {
        this.id = id;
        this.medicamento = medicamento;
        this.maoDeObra = maoDeObra;
        this.maquinas = maquinas;
        this.pastagem = pastagem;
        this.outros = outros;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(BigDecimal medicamento) {
        this.medicamento = medicamento;
    }

    public BigDecimal getMaoDeObra() {
        return maoDeObra;
    }

    public void setMaoDeObra(BigDecimal maoDeObra) {
        this.maoDeObra = maoDeObra;
    }

    public BigDecimal getMaquinas() {
        return maquinas;
    }

    public void setMaquinas(BigDecimal maquinas) {
        this.maquinas = maquinas;
    }

    public BigDecimal getPastagem() {
        return pastagem;
    }

    public void setPastagem(BigDecimal pastagem) {
        this.pastagem = pastagem;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public BigDecimal getOutros() {
        return outros;
    }

    public void setOutros(BigDecimal outros) {
        this.outros = outros;
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
        if (!(object instanceof Lv1p4)) {
            return false;
        }
        Lv1p4 other = (Lv1p4) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv1p4[ id=" + id + " ]";
    }
    
}
