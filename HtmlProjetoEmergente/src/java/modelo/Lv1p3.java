package modelo;

public class Lv1p3 {

    private Integer id;
    private Long propriedade_id;
    private Double receita_anual;
    private String ano;

    public Lv1p3(Long id, Integer ano) {
        this.propriedade_id = id;
        this.ano = ano.toString();
    }

    public Lv1p3() {

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

    public Long getPropriedade_id() {
        return propriedade_id;
    }

    public void setPropriedade_id(Long propriedade_id) {
        this.propriedade_id = propriedade_id;
    }

    public Double getReceita_anual() {
        return receita_anual;
    }

    public void setReceita_anual(Double receita_anual) {
        this.receita_anual = receita_anual;
    }
}
