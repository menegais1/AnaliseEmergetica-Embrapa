package dao;

import modelo.Lv1Resultado;
import modelo.Lv1p1;
import modelo.Lv1p2;
import modelo.Lv1p3;
import modelo.Lv1p4;
import modelo.Lv2Resultado;
import modelo.Lv2p1;
import modelo.Lv2p2;
import modelo.Lv2p3;
import modelo.Lv2p4;

public class Passos {

    private Lv1p1 lv1p1;
    private Lv1p1DAO lv1p1dao;
    private Lv1p2 lv1p2;
    private Lv1p2DAO lv1p2dao;
    private Lv1p3 lv1p3;
    private Lv1p3DAO lv1p3dao;
    private Lv1p4 lv1p4;
    private Lv1p4DAO lv1p4dao;
    private Lv1Resultado lv1resultado;
    private Lv1ResultadoDAO lv1resultadodao;
    private Lv2p1 lv2p1;
    private Lv2p1DAO lv2p1dao;
    private Lv2p2 lv2p2;
    private Lv2p2DAO lv2p2dao;
    private Lv2p3 lv2p3;
    private Lv2p3DAO lv2p3dao;
    private Lv2p4 lv2p4;
    private Lv2p4DAO lv2p4dao;
    private Lv2Resultado lv2resultado;
    private Lv2ResultadoDAO lv2resultadodao;
    private String ano;

    public Passos() {
        lv1p1dao = new Lv1p1DAO();
        lv1p2dao = new Lv1p2DAO();
        lv1p3dao = new Lv1p3DAO();
        lv1p4dao = new Lv1p4DAO();
        lv1resultadodao = new Lv1ResultadoDAO();
        lv2p1dao = new Lv2p1DAO();
        lv2p2dao = new Lv2p2DAO();
        lv2p3dao = new Lv2p3DAO();
        lv2p4dao = new Lv2p4DAO();
        lv2resultadodao = new Lv2ResultadoDAO();
    }

    public Lv1p1DAO getLv1p1dao() {
        return lv1p1dao;
    }

    public void setLv1p1dao(Lv1p1DAO lv1p1dao) {
        this.lv1p1dao = lv1p1dao;
    }

    public Lv1p2DAO getLv1p2dao() {
        return lv1p2dao;
    }

    public void setLv1p2dao(Lv1p2DAO lv1p2dao) {
        this.lv1p2dao = lv1p2dao;
    }

    public Lv1p3DAO getLv1p3dao() {
        return lv1p3dao;
    }

    public void setLv1p3dao(Lv1p3DAO lv1p3dao) {
        this.lv1p3dao = lv1p3dao;
    }

    public Lv1p4DAO getLv1p4dao() {
        return lv1p4dao;
    }

    public void setLv1p4dao(Lv1p4DAO lv1p4dao) {
        this.lv1p4dao = lv1p4dao;
    }

    public Lv1Resultado getLv1resultado() {
        return lv1resultado;
    }

    public void setLv1resultado(Lv1Resultado lv1resultado) {
        this.lv1resultado = lv1resultado;
    }

    public Lv1ResultadoDAO getLv1resultadodao() {
        return lv1resultadodao;
    }

    public void setLv1resultadodao(Lv1ResultadoDAO lv1resultadodao) {
        this.lv1resultadodao = lv1resultadodao;
    }

    public Lv2p1DAO getLv2p1dao() {
        return lv2p1dao;
    }

    public void setLv2p1dao(Lv2p1DAO lv2p1dao) {
        this.lv2p1dao = lv2p1dao;
    }

    public Lv2p2DAO getLv2p2dao() {
        return lv2p2dao;
    }

    public void setLv2p2dao(Lv2p2DAO lv2p2dao) {
        this.lv2p2dao = lv2p2dao;
    }

    public Lv2p3DAO getLv2p3dao() {
        return lv2p3dao;
    }

    public void setLv2p3dao(Lv2p3DAO lv2p3dao) {
        this.lv2p3dao = lv2p3dao;
    }

    public Lv2p4DAO getLv2p4dao() {
        return lv2p4dao;
    }

    public void setLv2p4dao(Lv2p4DAO lv2p4dao) {
        this.lv2p4dao = lv2p4dao;
    }

    public Lv2Resultado getLv2resultado() {
        return lv2resultado;
    }

    public void setLv2resultado(Lv2Resultado lv2resultado) {
        this.lv2resultado = lv2resultado;
    }

    public Lv2ResultadoDAO getLv2resultadodao() {
        return lv2resultadodao;
    }

    public void setLv2resultadodao(Lv2ResultadoDAO lv2resultadodao) {
        this.lv2resultadodao = lv2resultadodao;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public Lv1p1 getLv1p1() {
        return lv1p1;
    }

    public void setLv1p1(Lv1p1 lv1p1) {
        this.lv1p1 = lv1p1;
    }

    public Lv1p2 getLv1p2() {
        return lv1p2;
    }

    public void setLv1p2(Lv1p2 lv1p2) {
        this.lv1p2 = lv1p2;
    }

    public Lv1p3 getLv1p3() {
        return lv1p3;
    }

    public void setLv1p3(Lv1p3 lv1p3) {
        this.lv1p3 = lv1p3;
    }

    public Lv1p4 getLv1p4() {
        return lv1p4;
    }

    public void setLv1p4(Lv1p4 lv1p4) {
        this.lv1p4 = lv1p4;
    }

    public Lv2p1 getLv2p1() {
        return lv2p1;
    }

    public void setLv2p1(Lv2p1 lv2p1) {
        this.lv2p1 = lv2p1;
    }

    public Lv2p2 getLv2p2() {
        return lv2p2;
    }

    public void setLv2p2(Lv2p2 lv2p2) {
        this.lv2p2 = lv2p2;
    }

    public Lv2p3 getLv2p3() {
        return lv2p3;
    }

    public void setLv2p3(Lv2p3 lv2p3) {
        this.lv2p3 = lv2p3;
    }

    public Lv2p4 getLv2p4() {
        return lv2p4;
    }

    public void setLv2p4(Lv2p4 lv2p4) {
        this.lv2p4 = lv2p4;
    }

    //AQUI COMEÇA OS CALCULOS DO NIVEL 1 
    public Double lotacaoMedia() {
        Double areapec = this.getLv1p1().getArea_apro();

        return totalBovinos() / areapec;

    }

    public Integer totalBovinos() {

        Integer vacasdecria = this.getLv1p2().getVacadecria();
        Integer vacasdedescarte = this.getLv1p2().getVacadedescarte();
        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();
        Integer novilhos1 = this.getLv1p2().getNovilho1324();
        Integer novilhas1 = this.getLv1p2().getNovilha1324();
        Integer novilhos2 = this.getLv1p2().getNovilho2536();
        Integer novilhas2 = this.getLv1p2().getNovilha2536();
        Integer novilhos3 = this.getLv1p2().getNovilho36();
        Integer novilhas3 = this.getLv1p2().getNovilha36();
        Integer touros = this.getLv1p2().getTouro();

        Integer total = vacasdecria + vacasdedescarte + terneiro + terneira + novilhos1 + novilhas1 + novilhos2 + novilhas2 + novilhos3 + novilhas3 + touros;

        return total;

    }

    public Double percentualRebanhoComCria() {

        Double areapec = this.getLv1p1().getArea_apro();

        Integer vacasdecria = this.getLv1p2().getVacadecria();
        Integer vacasdedescarte = this.getLv1p2().getVacadedescarte();
        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();
        Integer touros = this.getLv1p2().getTouro();
        Integer x = ((vacasdecria + vacasdedescarte + touros + terneiro + terneira) * 100) / totalBovinos();

        return Double.parseDouble(x.toString());

    }

    public Double totalCustoProducao() {

        Double medicamento = this.getLv1p4().getMedicamento();
        Double maodeobra = this.getLv1p4().getMao_de_obra();
        Double maquina = this.getLv1p4().getMaquinas();
        Double pastagem = this.getLv1p4().getPastagem();
        Double outros = this.getLv1p4().getOutros();

        return medicamento + maodeobra + maquina + pastagem + outros;
    }

    public Double receitaHectar() {

        Double areapec = this.getLv1p1().getArea_apro();

        Double receitatotal = this.getLv1p3().getReceita_anual();

        return receitatotal / areapec;
    }

    public Double custoAtividadeDeCria() {

        return (totalCustoProducao() * percentualRebanhoComCria()) / 100;
    }

    public Double custoHectar() {

        Double areapec = this.getLv1p1().getArea_apro();

        Double custoproducao = this.totalCustoProducao();

        return custoproducao / areapec;
    }

    public Double custoTerneiro1() {

        Integer terneiro = this.getLv1p2().getTerneiro();
        Integer terneira = this.getLv1p2().getTerneira();

        Double totalcusto = this.totalCustoProducao();

        Double total = totalcusto / (terneiro + terneira);

        return total;
    }

    //AQUI COMEÇA O CALCULOS DO NIVEL 2
    public Double areaMedia() {
        Double a = this.getLv2p1().getPastagemnativa();
        Double b = this.getLv2p1().getPastagemnativamelhorada();
        Double c = this.getLv2p1().getPastagemcultivadaperene();
        Double d = this.getLv2p1().getPastagemanuaisdeinverno();
        Double e = this.getLv2p1().getPastagemanuaisdeverao();
        Double f = this.getLv2p1().getAgriculturai();
        Double g = this.getLv2p1().getAgriculturav();
        Double h = this.getLv2p1().getFlorestaplantadas();
        Double i = this.getLv2p1().getOutrasculturas();
        Double j = this.getLv2p1().getMatasnativas();
        Double k = this.getLv2p1().getSea();
        Double l = this.getLv2p1().getInaproveitavel();

        return a + b + c + d + e + f + g + h + i + j + k + l;
    }

    public Double areaAproveitavel() {
        Double f = this.getLv2p1().getAgriculturai();
        Double g = this.getLv2p1().getAgriculturav();
        Double h = this.getLv2p1().getFlorestaplantadas();
        Double i = this.getLv2p1().getOutrasculturas();

        return f + g + h + i;
    }

    public Double percentualRebanhoComCria1() {
        Integer a1 = this.getLv2p2().getVacadecriajanmar();
        Integer a2 = this.getLv2p2().getVacadecriaabrjun();
        Integer a3 = this.getLv2p2().getVacadecriajulset();
        Integer a4 = this.getLv2p2().getVacadecriaoutdez();
        Integer b1 = this.getLv2p2().getVacadedescartejanmar();
        Integer b2 = this.getLv2p2().getVacadedescarteabrjun();
        Integer b3 = this.getLv2p2().getVacadedescartejulset();
        Integer b4 = this.getLv2p2().getVacadedescarteoutdez();
        Integer c1 = this.getLv2p2().getTerneirosjanmar();
        Integer c2 = this.getLv2p2().getTerneirosabrjun();
        Integer c3 = this.getLv2p2().getTerneirosjulset();
        Integer c4 = this.getLv2p2().getTerneirosoutdez();
        Integer d1 = this.getLv2p2().getTerneirasjanmar();
        Integer d2 = this.getLv2p2().getTerneirasabrjun();
        Integer d3 = this.getLv2p2().getTerneirasjulset();
        Integer d4 = this.getLv2p2().getTerneirasoutdez();
        Integer e1 = this.getLv2p2().getNovilho1324janmar();
        Integer e2 = this.getLv2p2().getNovilho1324abrjun();
        Integer e3 = this.getLv2p2().getNovilho1324julset();
        Integer e4 = this.getLv2p2().getNovilho1324outdez();
        Integer f1 = this.getLv2p2().getNovilha1324janmar();
        Integer f2 = this.getLv2p2().getNovilha1324abrjun();
        Integer f3 = this.getLv2p2().getNovilha1324julset();
        Integer f4 = this.getLv2p2().getNovilha1324outdez();
        Integer g1 = this.getLv2p2().getNovilho2536janmar();
        Integer g2 = this.getLv2p2().getNovilho2536abrjun();
        Integer g3 = this.getLv2p2().getNovilho2536julset();
        Integer g4 = this.getLv2p2().getNovilho2536outdez();
        Integer h1 = this.getLv2p2().getNovilha2536janmar();
        Integer h2 = this.getLv2p2().getNovilha2536abrjun();
        Integer h3 = this.getLv2p2().getNovilha2536julset();
        Integer h4 = this.getLv2p2().getNovilha2536outdez();
        Integer i1 = this.getLv2p2().getNovilho36janmar();
        Integer i2 = this.getLv2p2().getNovilho36abrjun();
        Integer i3 = this.getLv2p2().getNovilho36julset();
        Integer i4 = this.getLv2p2().getNovilho36outdez();
        Integer j1 = this.getLv2p2().getTourojanmar();
        Integer j2 = this.getLv2p2().getTouroabrjun();
        Integer j3 = this.getLv2p2().getTourojulset();
        Integer j4 = this.getLv2p2().getTourooutdez();

        Integer x = ((a1 + a2 + a3 + a4 + j1 + j2 + j3 + j4 + f1 + f2 + f3 + f4 + h1 + h2 + h3 + h4 + c1 + c2 + c3 + c4 + d1 + d2 + d3 + d4) * 100) / totalRebanho2();

        return Double.parseDouble(x.toString());

    }

    public Integer totalRebanho2() {

        Integer a1 = this.getLv2p2().getVacadecriajanmar();
        Integer a2 = this.getLv2p2().getVacadecriaabrjun();
        Integer a3 = this.getLv2p2().getVacadecriajulset();
        Integer a4 = this.getLv2p2().getVacadecriaoutdez();
        Integer b1 = this.getLv2p2().getVacadedescartejanmar();
        Integer b2 = this.getLv2p2().getVacadedescarteabrjun();
        Integer b3 = this.getLv2p2().getVacadedescartejulset();
        Integer b4 = this.getLv2p2().getVacadedescarteoutdez();
        Integer c1 = this.getLv2p2().getTerneirosjanmar();
        Integer c2 = this.getLv2p2().getTerneirosabrjun();
        Integer c3 = this.getLv2p2().getTerneirosjulset();
        Integer c4 = this.getLv2p2().getTerneirosoutdez();
        Integer d1 = this.getLv2p2().getTerneirasjanmar();
        Integer d2 = this.getLv2p2().getTerneirasabrjun();
        Integer d3 = this.getLv2p2().getTerneirasjulset();
        Integer d4 = this.getLv2p2().getTerneirasoutdez();
        Integer e1 = this.getLv2p2().getNovilho1324janmar();
        Integer e2 = this.getLv2p2().getNovilho1324abrjun();
        Integer e3 = this.getLv2p2().getNovilho1324julset();
        Integer e4 = this.getLv2p2().getNovilho1324outdez();
        Integer f1 = this.getLv2p2().getNovilha1324janmar();
        Integer f2 = this.getLv2p2().getNovilha1324abrjun();
        Integer f3 = this.getLv2p2().getNovilha1324julset();
        Integer f4 = this.getLv2p2().getNovilha1324outdez();
        Integer g1 = this.getLv2p2().getNovilho2536janmar();
        Integer g2 = this.getLv2p2().getNovilho2536abrjun();
        Integer g3 = this.getLv2p2().getNovilho2536julset();
        Integer g4 = this.getLv2p2().getNovilho2536outdez();
        Integer h1 = this.getLv2p2().getNovilha2536janmar();
        Integer h2 = this.getLv2p2().getNovilha2536abrjun();
        Integer h3 = this.getLv2p2().getNovilha2536julset();
        Integer h4 = this.getLv2p2().getNovilha2536outdez();
        Integer i1 = this.getLv2p2().getNovilho36janmar();
        Integer i2 = this.getLv2p2().getNovilho36abrjun();
        Integer i3 = this.getLv2p2().getNovilho36julset();
        Integer i4 = this.getLv2p2().getNovilho36outdez();
        Integer j1 = this.getLv2p2().getTourojanmar();
        Integer j2 = this.getLv2p2().getTouroabrjun();
        Integer j3 = this.getLv2p2().getTourojulset();
        Integer j4 = this.getLv2p2().getTourooutdez();

        return a1 + a2 + a3 + a4 + b1 + b2 + b3 + b4 + c1 + c2 + c3 + c4 + d1 + d2 + d3 + d4 + e1 + e2 + e3 + e4 + f1 + f2 + f3 + f4 + g1 + g2 + g3 + g4 + h1 + h2 + h3 + h4 + i1 + i2 + i3 + i4 + j1 + j2 + j3 + j4;
    }

    public Double lotacaoMedia2() {
        Double area = areaMedia();

        Integer a1 = this.getLv2p2().getVacadecriajanmar();
        Integer a2 = this.getLv2p2().getVacadecriaabrjun();
        Integer a3 = this.getLv2p2().getVacadecriajulset();
        Integer a4 = this.getLv2p2().getVacadecriaoutdez();
        Integer b1 = this.getLv2p2().getVacadedescartejanmar();
        Integer b2 = this.getLv2p2().getVacadedescarteabrjun();
        Integer b3 = this.getLv2p2().getVacadedescartejulset();
        Integer b4 = this.getLv2p2().getVacadedescarteoutdez();
        Integer c1 = this.getLv2p2().getTerneirosjanmar();
        Integer c2 = this.getLv2p2().getTerneirosabrjun();
        Integer c3 = this.getLv2p2().getTerneirosjulset();
        Integer c4 = this.getLv2p2().getTerneirosoutdez();
        Integer d1 = this.getLv2p2().getTerneirasjanmar();
        Integer d2 = this.getLv2p2().getTerneirasabrjun();
        Integer d3 = this.getLv2p2().getTerneirasjulset();
        Integer d4 = this.getLv2p2().getTerneirasoutdez();
        Integer e1 = this.getLv2p2().getNovilho1324janmar();
        Integer e2 = this.getLv2p2().getNovilho1324abrjun();
        Integer e3 = this.getLv2p2().getNovilho1324julset();
        Integer e4 = this.getLv2p2().getNovilho1324outdez();
        Integer f1 = this.getLv2p2().getNovilha1324janmar();
        Integer f2 = this.getLv2p2().getNovilha1324abrjun();
        Integer f3 = this.getLv2p2().getNovilha1324julset();
        Integer f4 = this.getLv2p2().getNovilha1324outdez();
        Integer g1 = this.getLv2p2().getNovilho2536janmar();
        Integer g2 = this.getLv2p2().getNovilho2536abrjun();
        Integer g3 = this.getLv2p2().getNovilho2536julset();
        Integer g4 = this.getLv2p2().getNovilho2536outdez();
        Integer h1 = this.getLv2p2().getNovilha2536janmar();
        Integer h2 = this.getLv2p2().getNovilha2536abrjun();
        Integer h3 = this.getLv2p2().getNovilha2536julset();
        Integer h4 = this.getLv2p2().getNovilha2536outdez();
        Integer i1 = this.getLv2p2().getNovilho36janmar();
        Integer i2 = this.getLv2p2().getNovilho36abrjun();
        Integer i3 = this.getLv2p2().getNovilho36julset();
        Integer i4 = this.getLv2p2().getNovilho36outdez();
        Integer j1 = this.getLv2p2().getTourojanmar();
        Integer j2 = this.getLv2p2().getTouroabrjun();
        Integer j3 = this.getLv2p2().getTourojulset();
        Integer j4 = this.getLv2p2().getTourooutdez();

        return totalRebanho2() / area;
    }

    public Double totalReceita() {
        Double a = this.getLv2p3().getTerneirovalor();
        Double b = this.getLv2p3().getTerneiravalor();
        Double c = this.getLv2p3().getNovilhavalor();
        Double d = this.getLv2p3().getVacadedescartevalor();
        Double e = this.getLv2p3().getVacaprenhavalor();
        Double f = this.getLv2p3().getVacacomcriavalor();
        Double g = this.getLv2p3().getVacagordavalor();
        Double h = this.getLv2p3().getNovilhorecriavalor();
        Double i = this.getLv2p3().getNovilhogordovalor();
        Double j = this.getLv2p3().getTorunovalor();
        Double k = this.getLv2p3().getTourovalor();
        Integer a1 = this.getLv2p3().getTerneiroquant();
        Integer b1 = this.getLv2p3().getTerneiraquant();
        Integer c1 = this.getLv2p3().getNovilhaquant();
        Integer d1 = this.getLv2p3().getVacadedescartequant();
        Integer e1 = this.getLv2p3().getVacaprenhasquant();
        Integer f1 = this.getLv2p3().getVacacomcriaquant();
        Integer g1 = this.getLv2p3().getVacagordaquant();
        Integer h1 = this.getLv2p3().getNovilhorecriaquant();
        Integer i1 = this.getLv2p3().getNovilhogordoquant();
        Integer j1 = this.getLv2p3().getTorunosquant();
        Integer k1 = this.getLv2p3().getTouroquant();

        return (a * a1) + (b * b1) + (c * c1) + (d * d1) + (e * e1) + (f * f1) + (g * g1) + (h * h1) + (i * i1) + (j * j1) + (k * k1);
    }

    public Double receitahectar2() {

        return areaMedia() / totalReceita();
    }

    public Double totalCustoProducao1() {
        Double a = this.getLv2p4().getMedicamento();
        Double b = this.getLv2p4().getCarrapaticida();
        Double c = this.getLv2p4().getSal();
        Double d = this.getLv2p4().getCompradebovinos();
        Double e = this.getLv2p4().getUntesilosdeusogeral();
        Double f = this.getLv2p4().getSemem();
        Double g = this.getLv2p4().getMaodeobrafixa();
        Double h = this.getLv2p4().getMaodeobravariavel();
        Double i = this.getLv2p4().getSemente();
        Double j = this.getLv2p4().getDefensivoagriparapastagem();
        Double k = this.getLv2p4().getAdubosparapastagem();
        Double l = this.getLv2p4().getCombustivel();
        Double m = this.getLv2p4().getReparosmaquina();
        Double n = this.getLv2p4().getReparobanfeitoria();
        Double o = this.getLv2p4().getRacao();
        Double p = this.getLv2p4().getFrete();
        Double q = this.getLv2p4().getArrendamentocamponativo();
        Double r = this.getLv2p4().getArrendamentopastagemcultivada();
        Double s = this.getLv2p4().getImposto();
        Double t = this.getLv2p4().getOutradespesas();

        return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t;
    }

    public Double custoAtividadeDeCria1() {

        return (totalCustoProducao1() * percentualRebanhoComCria1()) / 100;
    }

    public Double custoProducaoHectar1() {

        return custoAtividadeDeCria1() / areaMedia();
    }

    public double custoTerneiro() {
        Double custo = this.custoAtividadeDeCria1();

        Integer c1 = this.getLv2p2().getTerneirosjanmar();
        Integer c2 = this.getLv2p2().getTerneirosabrjun();
        Integer c3 = this.getLv2p2().getTerneirosjulset();
        Integer c4 = this.getLv2p2().getTerneirosoutdez();
        Integer d1 = this.getLv2p2().getTerneirasjanmar();
        Integer d2 = this.getLv2p2().getTerneirasabrjun();
        Integer d3 = this.getLv2p2().getTerneirasjulset();
        Integer d4 = this.getLv2p2().getTerneirasoutdez();

        return custo / (c1 + c2 + c3 + c4 + d1 + d2 + d3 + d4);
    }

}
