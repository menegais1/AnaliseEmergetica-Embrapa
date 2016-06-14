
package modelo;

public class Lv1p1 {
    
    private Integer id;
    private Long propriedade_id;
    private String ano;
    private Double area_apro;

    public Lv1p1 (Long id, Integer ano){
        this.propriedade_id=id;
        this.ano =ano.toString();
        id=null;
    }
    
    public Lv1p1(){
        id=null;
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

    public Double getArea_apro() {
        return area_apro;
    }

    public void setArea_apro(Double area_apro) {
        this.area_apro = area_apro;
    }
}
