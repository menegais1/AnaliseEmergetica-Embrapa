
package modelo;


public class Lv1Resultado {
    
    private Integer id;
    private Double lotacaomedia;
    private Double receitahectar;
    private Double totalcustoproducao;
    private Double custohectar;
    private Long propriedade_id;
    private String ano;

    
     public Lv1Resultado (Long id, Integer ano){
        this.propriedade_id=id;
        this.ano =ano.toString();
    }
    
    public Lv1Resultado(){
        
    }
    
    public Double getLotacaomedia() {
        return lotacaomedia;
    }

    public void setLotacaomedia(Double lotacaomedia) {
        this.lotacaomedia = lotacaomedia;
    }

    public Double getReceitahectar() {
        return receitahectar;
    }

    public void setReceitahectar(Double receitahectar) {
        this.receitahectar = receitahectar;
    }

    public Double getTotalcustoproducao() {
        return totalcustoproducao;
    }

    public void setTotalcustoproducao(Double totalcustoproducao) {
        this.totalcustoproducao = totalcustoproducao;
    }

    public Double getCustohectar() {
        return custohectar;
    }

    public void setCustohectar(Double custohectar) {
        this.custohectar = custohectar;
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

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }
    
}
