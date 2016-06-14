package modelo;

public class Lv1p4 {

    private Integer id;
    private Long propriedade_id;
    private Double medicamento, mao_de_obra, maquinas, pastagem, outros;
    private String ano;

     public Lv1p4 (Long id, Integer ano){
        this.propriedade_id=id;
        this.ano =ano.toString();
    }
    
    public Lv1p4(){
        
    }
    
    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public Double getOutros() {
        return outros;
    }

    public void setOutros(Double outros) {
        this.outros = outros;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getPropriedade_id() {
        return propriedade_id;
    }

    public void setPropriedade_id(Long propriedade_id) {
        this.propriedade_id = propriedade_id;
    }

    public Double getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(Double medicamento) {
        this.medicamento = medicamento;
    }

    public Double getMao_de_obra() {
        return mao_de_obra;
    }

    public void setMao_de_obra(Double mao_de_obra) {
        this.mao_de_obra = mao_de_obra;
    }

    public Double getMaquinas() {
        return maquinas;
    }

    public void setMaquinas(Double maquinas) {
        this.maquinas = maquinas;
    }

    public Double getPastagem() {
        return pastagem;
    }

    public void setPastagem(Double pastagem) {
        this.pastagem = pastagem;
    }
}
