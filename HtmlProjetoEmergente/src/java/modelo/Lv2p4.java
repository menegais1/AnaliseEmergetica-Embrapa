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
@Table(name = "lv2p4")
@XmlRootElement
@NamedQueries({
        @NamedQuery(name = "Lv2p4.findPropriedade", query="SELECT l FROM Lv2p4 l WHERE l.propriedadeId.id= :propriedadeId AND l.ano= :ano"),

    
    @NamedQuery(name = "Lv2p4.findAll", query = "SELECT l FROM Lv2p4 l"),
    @NamedQuery(name = "Lv2p4.findById", query = "SELECT l FROM Lv2p4 l WHERE l.id = :id"),
    @NamedQuery(name = "Lv2p4.findByMedicamento", query = "SELECT l FROM Lv2p4 l WHERE l.medicamento = :medicamento"),
    @NamedQuery(name = "Lv2p4.findByCarrapaticidas", query = "SELECT l FROM Lv2p4 l WHERE l.carrapaticidas = :carrapaticidas"),
    @NamedQuery(name = "Lv2p4.findBySal", query = "SELECT l FROM Lv2p4 l WHERE l.sal = :sal"),
    @NamedQuery(name = "Lv2p4.findByRacao", query = "SELECT l FROM Lv2p4 l WHERE l.racao = :racao"),
    @NamedQuery(name = "Lv2p4.findByCompraDeBovinos", query = "SELECT l FROM Lv2p4 l WHERE l.compraDeBovinos = :compraDeBovinos"),
    @NamedQuery(name = "Lv2p4.findByUntensiliosDeUsoGeral", query = "SELECT l FROM Lv2p4 l WHERE l.untensiliosDeUsoGeral = :untensiliosDeUsoGeral"),
    @NamedQuery(name = "Lv2p4.findBySemem", query = "SELECT l FROM Lv2p4 l WHERE l.semem = :semem"),
    @NamedQuery(name = "Lv2p4.findByMaoDeObraFixa", query = "SELECT l FROM Lv2p4 l WHERE l.maoDeObraFixa = :maoDeObraFixa"),
    @NamedQuery(name = "Lv2p4.findByMaoDeObraVariavel", query = "SELECT l FROM Lv2p4 l WHERE l.maoDeObraVariavel = :maoDeObraVariavel"),
    @NamedQuery(name = "Lv2p4.findBySemente", query = "SELECT l FROM Lv2p4 l WHERE l.semente = :semente"),
    @NamedQuery(name = "Lv2p4.findByDefensivosAgriParaPastagem", query = "SELECT l FROM Lv2p4 l WHERE l.defensivosAgriParaPastagem = :defensivosAgriParaPastagem"),
    @NamedQuery(name = "Lv2p4.findByAdubosParaPastagem", query = "SELECT l FROM Lv2p4 l WHERE l.adubosParaPastagem = :adubosParaPastagem"),
    @NamedQuery(name = "Lv2p4.findByCombustivel", query = "SELECT l FROM Lv2p4 l WHERE l.combustivel = :combustivel"),
    @NamedQuery(name = "Lv2p4.findByReparosDeMaquina", query = "SELECT l FROM Lv2p4 l WHERE l.reparosDeMaquina = :reparosDeMaquina"),
    @NamedQuery(name = "Lv2p4.findByReparoDeBenfeitorias", query = "SELECT l FROM Lv2p4 l WHERE l.reparoDeBenfeitorias = :reparoDeBenfeitorias"),
    @NamedQuery(name = "Lv2p4.findByFrete", query = "SELECT l FROM Lv2p4 l WHERE l.frete = :frete"),
    @NamedQuery(name = "Lv2p4.findByArrendamentosDeCampoNativo", query = "SELECT l FROM Lv2p4 l WHERE l.arrendamentosDeCampoNativo = :arrendamentosDeCampoNativo"),
    @NamedQuery(name = "Lv2p4.findByArrendamentosDePastagemCultivada", query = "SELECT l FROM Lv2p4 l WHERE l.arrendamentosDePastagemCultivada = :arrendamentosDePastagemCultivada"),
    @NamedQuery(name = "Lv2p4.findByImpostos", query = "SELECT l FROM Lv2p4 l WHERE l.impostos = :impostos"),
    @NamedQuery(name = "Lv2p4.findByOutrasDespesas", query = "SELECT l FROM Lv2p4 l WHERE l.outrasDespesas = :outrasDespesas"),
    @NamedQuery(name = "Lv2p4.findByAno", query = "SELECT l FROM Lv2p4 l WHERE l.ano = :ano")})
public class Lv2p4 implements Serializable {

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
    @Column(name = "carrapaticidas")
    private BigDecimal carrapaticidas;
    @Basic(optional = false)
    @Column(name = "sal")
    private BigDecimal sal;
    @Basic(optional = false)
    @Column(name = "racao")
    private BigDecimal racao;
    @Basic(optional = false)
    @Column(name = "compra_de_bovinos")
    private BigDecimal compraDeBovinos;
    @Basic(optional = false)
    @Column(name = "untensilios_de_uso_geral")
    private BigDecimal untensiliosDeUsoGeral;
    @Basic(optional = false)
    @Column(name = "semem")
    private BigDecimal semem;
    @Basic(optional = false)
    @Column(name = "mao_de_obra_fixa")
    private BigDecimal maoDeObraFixa;
    @Basic(optional = false)
    @Column(name = "mao_de_obra_variavel")
    private BigDecimal maoDeObraVariavel;
    @Basic(optional = false)
    @Column(name = "semente")
    private BigDecimal semente;
    @Basic(optional = false)
    @Column(name = "defensivos_agri_para_pastagem")
    private BigDecimal defensivosAgriParaPastagem;
    @Basic(optional = false)
    @Column(name = "adubos_para_pastagem")
    private BigDecimal adubosParaPastagem;
    @Basic(optional = false)
    @Column(name = "combustivel")
    private BigDecimal combustivel;
    @Basic(optional = false)
    @Column(name = "reparos_de_maquina")
    private BigDecimal reparosDeMaquina;
    @Basic(optional = false)
    @Column(name = "reparo_de_benfeitorias")
    private BigDecimal reparoDeBenfeitorias;
    @Basic(optional = false)
    @Column(name = "frete")
    private BigDecimal frete;
    @Basic(optional = false)
    @Column(name = "arrendamentos_de_campo_nativo")
    private BigDecimal arrendamentosDeCampoNativo;
    @Basic(optional = false)
    @Column(name = "arrendamentos_de_pastagem_cultivada")
    private BigDecimal arrendamentosDePastagemCultivada;
    @Basic(optional = false)
    @Column(name = "impostos")
    private BigDecimal impostos;
    @Basic(optional = false)
    @Column(name = "outras_despesas")
    private BigDecimal outrasDespesas;
    @Column(name = "ano")
    private String ano;
    @JoinColumn(name = "propriedade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Propriedade propriedadeId;

    public Lv2p4() {
    }
    
    public Lv2p4(Integer id, String ano) throws Exception{
        PropriedadeDAO dao=new PropriedadeDAO();
        this.ano=ano;
        this.propriedadeId = dao.buscarPorChavePrimaria(id);
        
    }

    public Lv2p4(Integer id) {
        this.id = id;
    }

    public Lv2p4(Integer id, BigDecimal medicamento, BigDecimal carrapaticidas, BigDecimal sal, BigDecimal racao, BigDecimal compraDeBovinos, BigDecimal untensiliosDeUsoGeral, BigDecimal semem, BigDecimal maoDeObraFixa, BigDecimal maoDeObraVariavel, BigDecimal semente, BigDecimal defensivosAgriParaPastagem, BigDecimal adubosParaPastagem, BigDecimal combustivel, BigDecimal reparosDeMaquina, BigDecimal reparoDeBenfeitorias, BigDecimal frete, BigDecimal arrendamentosDeCampoNativo, BigDecimal arrendamentosDePastagemCultivada, BigDecimal impostos, BigDecimal outrasDespesas) {
        this.id = id;
        this.medicamento = medicamento;
        this.carrapaticidas = carrapaticidas;
        this.sal = sal;
        this.racao = racao;
        this.compraDeBovinos = compraDeBovinos;
        this.untensiliosDeUsoGeral = untensiliosDeUsoGeral;
        this.semem = semem;
        this.maoDeObraFixa = maoDeObraFixa;
        this.maoDeObraVariavel = maoDeObraVariavel;
        this.semente = semente;
        this.defensivosAgriParaPastagem = defensivosAgriParaPastagem;
        this.adubosParaPastagem = adubosParaPastagem;
        this.combustivel = combustivel;
        this.reparosDeMaquina = reparosDeMaquina;
        this.reparoDeBenfeitorias = reparoDeBenfeitorias;
        this.frete = frete;
        this.arrendamentosDeCampoNativo = arrendamentosDeCampoNativo;
        this.arrendamentosDePastagemCultivada = arrendamentosDePastagemCultivada;
        this.impostos = impostos;
        this.outrasDespesas = outrasDespesas;
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

    public BigDecimal getCarrapaticidas() {
        return carrapaticidas;
    }

    public void setCarrapaticidas(BigDecimal carrapaticidas) {
        this.carrapaticidas = carrapaticidas;
    }

    public BigDecimal getSal() {
        return sal;
    }

    public void setSal(BigDecimal sal) {
        this.sal = sal;
    }

    public BigDecimal getRacao() {
        return racao;
    }

    public void setRacao(BigDecimal racao) {
        this.racao = racao;
    }

    public BigDecimal getCompraDeBovinos() {
        return compraDeBovinos;
    }

    public void setCompraDeBovinos(BigDecimal compraDeBovinos) {
        this.compraDeBovinos = compraDeBovinos;
    }

    public BigDecimal getUntensiliosDeUsoGeral() {
        return untensiliosDeUsoGeral;
    }

    public void setUntensiliosDeUsoGeral(BigDecimal untensiliosDeUsoGeral) {
        this.untensiliosDeUsoGeral = untensiliosDeUsoGeral;
    }

    public BigDecimal getSemem() {
        return semem;
    }

    public void setSemem(BigDecimal semem) {
        this.semem = semem;
    }

    public BigDecimal getMaoDeObraFixa() {
        return maoDeObraFixa;
    }

    public void setMaoDeObraFixa(BigDecimal maoDeObraFixa) {
        this.maoDeObraFixa = maoDeObraFixa;
    }

    public BigDecimal getMaoDeObraVariavel() {
        return maoDeObraVariavel;
    }

    public void setMaoDeObraVariavel(BigDecimal maoDeObraVariavel) {
        this.maoDeObraVariavel = maoDeObraVariavel;
    }

    public BigDecimal getSemente() {
        return semente;
    }

    public void setSemente(BigDecimal semente) {
        this.semente = semente;
    }

    public BigDecimal getDefensivosAgriParaPastagem() {
        return defensivosAgriParaPastagem;
    }

    public void setDefensivosAgriParaPastagem(BigDecimal defensivosAgriParaPastagem) {
        this.defensivosAgriParaPastagem = defensivosAgriParaPastagem;
    }

    public BigDecimal getAdubosParaPastagem() {
        return adubosParaPastagem;
    }

    public void setAdubosParaPastagem(BigDecimal adubosParaPastagem) {
        this.adubosParaPastagem = adubosParaPastagem;
    }

    public BigDecimal getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(BigDecimal combustivel) {
        this.combustivel = combustivel;
    }

    public BigDecimal getReparosDeMaquina() {
        return reparosDeMaquina;
    }

    public void setReparosDeMaquina(BigDecimal reparosDeMaquina) {
        this.reparosDeMaquina = reparosDeMaquina;
    }

    public BigDecimal getReparoDeBenfeitorias() {
        return reparoDeBenfeitorias;
    }

    public void setReparoDeBenfeitorias(BigDecimal reparoDeBenfeitorias) {
        this.reparoDeBenfeitorias = reparoDeBenfeitorias;
    }

    public BigDecimal getFrete() {
        return frete;
    }

    public void setFrete(BigDecimal frete) {
        this.frete = frete;
    }

    public BigDecimal getArrendamentosDeCampoNativo() {
        return arrendamentosDeCampoNativo;
    }

    public void setArrendamentosDeCampoNativo(BigDecimal arrendamentosDeCampoNativo) {
        this.arrendamentosDeCampoNativo = arrendamentosDeCampoNativo;
    }

    public BigDecimal getArrendamentosDePastagemCultivada() {
        return arrendamentosDePastagemCultivada;
    }

    public void setArrendamentosDePastagemCultivada(BigDecimal arrendamentosDePastagemCultivada) {
        this.arrendamentosDePastagemCultivada = arrendamentosDePastagemCultivada;
    }

    public BigDecimal getImpostos() {
        return impostos;
    }

    public void setImpostos(BigDecimal impostos) {
        this.impostos = impostos;
    }

    public BigDecimal getOutrasDespesas() {
        return outrasDespesas;
    }

    public void setOutrasDespesas(BigDecimal outrasDespesas) {
        this.outrasDespesas = outrasDespesas;
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
        if (!(object instanceof Lv2p4)) {
            return false;
        }
        Lv2p4 other = (Lv2p4) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Lv2p4[ id=" + id + " ]";
    }
    
}
