package dao;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import modelo.Lv1p1;
import modelo.Lv1p2;
import modelo.Lv1p3;
import modelo.Lv1p4;
import modelo.Lv1resultado;

public class Passoslv1 {

    private Lv1p1 lv1p1;
    private Lv1p1DAO lv1p1dao;
    private Lv1p2 lv1p2;
    private Lv1p2DAO lv1p2dao;
    private Lv1p3 lv1p3;
    private Lv1p3DAO lv1p3dao;
    private Lv1p4 lv1p4;
    private Lv1p4DAO lv1p4dao;
    private Lv1resultado lv1resultado;
    private Lv1resultadoDAO lv1resultadodao;

    private String ano;

    public String conversor(String x) {
        x = x.replace(".", "");
        x = x.replace(",", ".");
        return x;
    }

    public Passoslv1() throws Exception {
        lv1p1dao = new Lv1p1DAO();
        lv1p2dao = new Lv1p2DAO();
        lv1p3dao = new Lv1p3DAO();
        lv1p4dao = new Lv1p4DAO();
        lv1resultadodao = new Lv1resultadoDAO();
    }

    public Lv1p1 getLv1p1() {
        return lv1p1;
    }

    public void setLv1p1(Lv1p1 lv1p1) {
        this.lv1p1 = lv1p1;
    }

    public Lv1p1DAO getLv1p1dao() {
        return lv1p1dao;
    }

    public void setLv1p1dao(Lv1p1DAO lv1p1dao) {
        this.lv1p1dao = lv1p1dao;
    }

    public Lv1p2 getLv1p2() {
        return lv1p2;
    }

    public void setLv1p2(Lv1p2 lv1p2) {
        this.lv1p2 = lv1p2;
    }

    public Lv1p2DAO getLv1p2dao() {
        return lv1p2dao;
    }

    public void setLv1p2dao(Lv1p2DAO lv1p2dao) {
        this.lv1p2dao = lv1p2dao;
    }

    public Lv1p3 getLv1p3() {
        return lv1p3;
    }

    public void setLv1p3(Lv1p3 lv1p3) {
        this.lv1p3 = lv1p3;
    }

    public Lv1p3DAO getLv1p3dao() {
        return lv1p3dao;
    }

    public void setLv1p3dao(Lv1p3DAO lv1p3dao) {
        this.lv1p3dao = lv1p3dao;
    }

    public Lv1p4 getLv1p4() {
        return lv1p4;
    }

    public void setLv1p4(Lv1p4 lv1p4) {
        this.lv1p4 = lv1p4;
    }

    public Lv1p4DAO getLv1p4dao() {
        return lv1p4dao;
    }

    public void setLv1p4dao(Lv1p4DAO lv1p4dao) {
        this.lv1p4dao = lv1p4dao;
    }

    public Lv1resultado getLv1resultado() {
        return lv1resultado;
    }

    public void setLv1resultado(Lv1resultado lv1resultado) {
        this.lv1resultado = lv1resultado;
    }

    public Lv1resultadoDAO getLv1resultadodao() {
        return lv1resultadodao;
    }

    public void setLv1resultadodao(Lv1resultadoDAO lv1resultadodao) {
        this.lv1resultadodao = lv1resultadodao;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public Integer totalBovinos() {

        Integer vacasdecria = this.getLv1p2().getVacaDeCria();
        Integer vacasdedescarte = this.getLv1p2().getVacaDeDescarte();
        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();
        Integer novilhos1 = this.getLv1p2().getNovilho13a24();
        Integer novilhas1 = this.getLv1p2().getNovilha13a24();
        Integer novilhos2 = this.getLv1p2().getNovilho25a36();
        Integer novilhas2 = this.getLv1p2().getNovilha25a36();
        Integer novilhos3 = this.getLv1p2().getNovilho36();
        Integer novilhas3 = this.getLv1p2().getNovilha36();
        Integer touros = this.getLv1p2().getTouro();

        Integer total = vacasdecria + vacasdedescarte + terneiro + terneira + novilhos1 + novilhas1 + novilhos2 + novilhas2 + novilhos3 + novilhas3 + touros;

        return total;

    }

    public BigDecimal lotacaoMedia() {

        try {
            return (BigDecimal.valueOf(totalBovinos().longValue()).divide(lv1p1.getAreaApro(), 2, BigDecimal.ROUND_HALF_UP));
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal percentualRebanhoComCria() {

        try {
            Integer vacasdecria = this.getLv1p2().getVacaDeCria();
            Integer vacasdedescarte = this.getLv1p2().getVacaDeDescarte();
            Integer terneiro = this.getLv1p2().getTerneiro();
            Integer terneira = this.getLv1p2().getTerneira();
            Integer touros = this.getLv1p2().getTouro();

            Double x = (double) ((vacasdecria + vacasdedescarte + touros + terneiro + terneira) * 100) / totalBovinos();

            return BigDecimal.valueOf(x);

        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal totalCustoProducao() {

        try {

            return this.getLv1p4().getMedicamento().add(this.getLv1p4().getMaquinas()).add(this.getLv1p4().getPastagem()).add(this.getLv1p4().getMaoDeObra()).add(this.getLv1p4().getOutros());
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal receitaHectare() {

        try {
            return ((lv1p3.getReceitaAnual().divide(lv1p1.getAreaApro(), 2, BigDecimal.ROUND_HALF_UP)));
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal custoAtividadeDeCria() {
        try {
            return ((this.totalCustoProducao().multiply(percentualRebanhoComCria())).divide(BigDecimal.valueOf(100))).setScale(2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal custoHectare() {
        try {
            return ((this.totalCustoProducao().divide(lv1p1.getAreaApro(), 2, BigDecimal.ROUND_HALF_UP)));
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal custoTerneiro() {

        try {
            Integer terneiro = this.getLv1p2().getTerneiro();
            Integer terneira = this.getLv1p2().getTerneira();

            BigDecimal totalcusto = this.totalCustoProducao();

            return totalcusto.divide(BigDecimal.valueOf(terneiro + terneira), 2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

}
