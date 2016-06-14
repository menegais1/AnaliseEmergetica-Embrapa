package modelo;

public class Lv2p1 {

    private Integer id;
    private Double pastagemnativa;
    private Double pastagemnativamelhorada;
    private Double pastagemcultivadaperene;
    private Double pastagemanuaisdeinverno;
    private Double pastagemanuaisdeverao;
    private Double agriculturai;
    private Double agriculturav;
    private Double florestaplantadas;
    private Double outrasculturas;
    private Double matasnativas;
    private Double sea;
    private Double inaproveitavel;
    private Long propriedade_id;
    private String ano;

    public Lv2p1(Long id, Integer ano) {
        this.propriedade_id = id;
        this.ano = ano.toString();
    }

    public Lv2p1() {

    }

    public Double getOutrasculturas() {
        return outrasculturas;
    }

    public void setOutrasculturas(Double outrasculturas) {
        this.outrasculturas = outrasculturas;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getPastagemnativa() {
        return pastagemnativa;
    }

    public void setPastagemnativa(Double pastagemnativa) {
        this.pastagemnativa = pastagemnativa;
    }

    public Double getPastagemnativamelhorada() {
        return pastagemnativamelhorada;
    }

    public void setPastagemnativamelhorada(Double pastagemnativamelhorada) {
        this.pastagemnativamelhorada = pastagemnativamelhorada;
    }

    public Double getPastagemcultivadaperene() {
        return pastagemcultivadaperene;
    }

    public void setPastagemcultivadaperene(Double pastagemcultivadaperene) {
        this.pastagemcultivadaperene = pastagemcultivadaperene;
    }

    public Double getPastagemanuaisdeinverno() {
        return pastagemanuaisdeinverno;
    }

    public void setPastagemanuaisdeinverno(Double pastagemanuaisdeinverno) {
        this.pastagemanuaisdeinverno = pastagemanuaisdeinverno;
    }

    public Double getPastagemanuaisdeverao() {
        return pastagemanuaisdeverao;
    }

    public void setPastagemanuaisdeverao(Double pastagemanuaisdeverao) {
        this.pastagemanuaisdeverao = pastagemanuaisdeverao;
    }

    public Double getAgriculturai() {
        return agriculturai;
    }

    public void setAgriculturai(Double agriculturai) {
        this.agriculturai = agriculturai;
    }

    public Double getAgriculturav() {
        return agriculturav;
    }

    public void setAgriculturav(Double agriculturav) {
        this.agriculturav = agriculturav;
    }

    public Double getFlorestaplantadas() {
        return florestaplantadas;
    }

    public void setFlorestaplantadas(Double florestaplantadas) {
        this.florestaplantadas = florestaplantadas;
    }

    public Double getMatasnativas() {
        return matasnativas;
    }

    public void setMatasnativas(Double matasnativas) {
        this.matasnativas = matasnativas;
    }

    public Double getSea() {
        return sea;
    }

    public void setSea(Double sea) {
        this.sea = sea;
    }

    public Double getInaproveitavel() {
        return inaproveitavel;
    }

    public void setInaproveitavel(Double inaproveitavel) {
        this.inaproveitavel = inaproveitavel;
    }

    public Long getPropriedade_id() {
        return propriedade_id;
    }

    public void setPropriedade_id(Long propriedade_id) {
        this.propriedade_id = propriedade_id;
    }

}
