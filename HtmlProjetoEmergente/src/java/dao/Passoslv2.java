/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.math.BigDecimal;
import modelo.Lv2p1;
import modelo.Lv2p2;
import modelo.Lv2p3;
import modelo.Lv2p4;
import modelo.Lv2resultado;

public class Passoslv2 {

    private Lv2p1 lv2p1;
    private Lv2p2 lv2p2;
    private Lv2p3 lv2p3;
    private Lv2p4 lv2p4;
    private Lv2resultado lv2resultado;

    private String ano;

    public String conversor(String x) {
        x = x.replace(".", "");
        x = x.replace(",", ".");
        return x;
    }

    public Passoslv2() throws Exception {
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


    public Lv2resultado getLv2resultado() {
        return lv2resultado;
    }

    public void setLv2resultado(Lv2resultado lv2resultado) {
        this.lv2resultado = lv2resultado;
    }


    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public BigDecimal areaMedia() {

        return (areaAproveitavelPecuariaVerao().add(areaAproveitavelPecuariaInverno())).divide(BigDecimal.valueOf(2), 2, BigDecimal.ROUND_HALF_UP);

    }

    public BigDecimal areaAproveitavel() {

        try {
            BigDecimal a = this.getLv2p1().getPastagemNativaVerao();
            BigDecimal b = this.getLv2p1().getPastagemNativaMelhoradaVerao();
            BigDecimal c = this.getLv2p1().getPastagemCultivadaPereneVerao();
            BigDecimal d = this.getLv2p1().getPastagemAnualVerao();

            BigDecimal f = this.getLv2p1().getAgriculturaVerao();
            BigDecimal h = this.getLv2p1().getFlorestasPlantadasVerao();
            BigDecimal i = this.getLv2p1().getOutrasAreasVerao();

            return a.add(b).add(c).add(d).add(f).add(h).add(i);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal areaAproveitavelPecuariaVerao() {
        try {
            BigDecimal a = this.getLv2p1().getPastagemNativaVerao();
            BigDecimal b = this.getLv2p1().getPastagemNativaMelhoradaVerao();
            BigDecimal c = this.getLv2p1().getPastagemCultivadaPereneVerao();
            BigDecimal d = this.getLv2p1().getPastagemAnualVerao();

            return (a.add(b).add(c).add(d));
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal areaAproveitavelPecuariaInverno() {
        try {
            BigDecimal a = this.getLv2p1().getPastagemNativaInverno();
            BigDecimal b = this.getLv2p1().getPastagemNativaMelhoradaInverno();
            BigDecimal c = this.getLv2p1().getPastagemCultivadaPereneInverno();
            BigDecimal d = this.getLv2p1().getPastagemAnualInverno();

            return (a.add(b).add(c).add(d));
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal percentualRebanhoComCria() {
        try {
            Integer a1 = this.getLv2p2().getVacaDeCriaJanmar();
            Integer a2 = this.getLv2p2().getVacaDeCriaAbrjun();
            Integer a3 = this.getLv2p2().getVacaDeCriaJulset();
            Integer a4 = this.getLv2p2().getVacaDeCriaOutdez();

            Integer c1 = this.getLv2p2().getTerneirosJanmar();
            Integer c2 = this.getLv2p2().getTerneirosAbrjun();
            Integer c3 = this.getLv2p2().getTerneirosJulset();
            Integer c4 = this.getLv2p2().getTerneirosOutdez();

            Integer d1 = this.getLv2p2().getTerneirasJanmar();
            Integer d2 = this.getLv2p2().getTerneirasAbrjun();
            Integer d3 = this.getLv2p2().getTerneirasJulset();
            Integer d4 = this.getLv2p2().getTerneirasOutdez();

            Integer f1 = this.getLv2p2().getNovilhas13a24Janmar();
            Integer f2 = this.getLv2p2().getNovilhas13a24Abrjun();
            Integer f3 = this.getLv2p2().getNovilhas13a24Julset();
            Integer f4 = this.getLv2p2().getNovilhas13a24Outdez();

            Integer h1 = this.getLv2p2().getNovilhas25a36Janmar();
            Integer h2 = this.getLv2p2().getNovilhas25a36Abrjun();
            Integer h3 = this.getLv2p2().getNovilhas25a36Julset();
            Integer h4 = this.getLv2p2().getNovilhas25a36Outdez();

            Integer j1 = this.getLv2p2().getTouroJanmar();
            Integer j2 = this.getLv2p2().getTouroAbrjun();
            Integer j3 = this.getLv2p2().getTouroJulset();
            Integer j4 = this.getLv2p2().getTouroOutdez();

            BigDecimal x = BigDecimal.valueOf(((((a1 + a2 + a3 + a4) / 4) + ((j1 + j2 + j3 + j4) / 4) + ((f1 + f2 + f3 + f4) / 4) + ((h1 + h2 + h3 + h4) / 4) + ((c1 + c2 + c3 + c4) / 4) + ((d1 + d2 + d3 + d4) / 4)) * 100) / totalRebanho());

            return x;
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public Double totalRebanho() {
        try {
            Integer a1 = this.getLv2p2().getVacaDeCriaJanmar();
            Integer a2 = this.getLv2p2().getVacaDeCriaAbrjun();
            Integer a3 = this.getLv2p2().getVacaDeCriaJulset();
            Integer a4 = this.getLv2p2().getVacaDeCriaOutdez();
            Integer b1 = this.getLv2p2().getVacaDeDescarteJanmar();
            Integer b2 = this.getLv2p2().getVacaDeDescarteAbrjun();
            Integer b3 = this.getLv2p2().getVacaDeDescarteJulset();
            Integer b4 = this.getLv2p2().getVacaDeDescarteOutdez();
            Integer c1 = this.getLv2p2().getTerneirosJanmar();
            Integer c2 = this.getLv2p2().getTerneirosAbrjun();
            Integer c3 = this.getLv2p2().getTerneirosJulset();
            Integer c4 = this.getLv2p2().getTerneirosOutdez();
            Integer d1 = this.getLv2p2().getTerneirasJanmar();
            Integer d2 = this.getLv2p2().getTerneirasAbrjun();
            Integer d3 = this.getLv2p2().getTerneirasJulset();
            Integer d4 = this.getLv2p2().getTerneirasOutdez();
            Integer e1 = this.getLv2p2().getNovilhos13a24Janmar();
            Integer e2 = this.getLv2p2().getNovilhos13a24Abrjun();
            Integer e3 = this.getLv2p2().getNovilhos13a24Julset();
            Integer e4 = this.getLv2p2().getNovilhos13a24Outdez();
            Integer f1 = this.getLv2p2().getNovilhas13a24Janmar();
            Integer f2 = this.getLv2p2().getNovilhas13a24Abrjun();
            Integer f3 = this.getLv2p2().getNovilhas13a24Julset();
            Integer f4 = this.getLv2p2().getNovilhas13a24Outdez();
            Integer g1 = this.getLv2p2().getNovilhos25a36Janmar();
            Integer g2 = this.getLv2p2().getNovilhos25a36Abrjun();
            Integer g3 = this.getLv2p2().getNovilhos25a36Julset();
            Integer g4 = this.getLv2p2().getNovilhos25a36Outdez();
            Integer h1 = this.getLv2p2().getNovilhas25a36Janmar();
            Integer h2 = this.getLv2p2().getNovilhas25a36Abrjun();
            Integer h3 = this.getLv2p2().getNovilhas25a36Julset();
            Integer h4 = this.getLv2p2().getNovilhas25a36Outdez();
            Integer i1 = this.getLv2p2().getNovilho36Janmar();
            Integer i2 = this.getLv2p2().getNovilho36Abrjun();
            Integer i3 = this.getLv2p2().getNovilho36Julset();
            Integer i4 = this.getLv2p2().getNovilho36Outdez();
            Integer j1 = this.getLv2p2().getTouroJanmar();
            Integer j2 = this.getLv2p2().getTouroAbrjun();
            Integer j3 = this.getLv2p2().getTouroJulset();
            Integer j4 = this.getLv2p2().getTouroOutdez();

            return (double) ((a1 + a2 + a3 + a4) / 4) + ((b1 + b2 + b3 + b4) / 4) + ((c1 + c2 + c3 + c4) / 4) + ((d1 + d2 + d3 + d4) / 4) + ((e1 + e2 + e3 + e4) / 4) + ((f1 + f2 + f3 + f4) / 4) + ((g1 + g2 + g3 + g4) / 4) + ((h1 + h2 + h3 + h4) / 4) + ((i1 + i2 + i3 + i4) / 4) + ((j1 + j2 + j3 + j4) / 4);

        } catch (Exception e) {
            return 0.0;
        }
    }

    public BigDecimal kg() {

        try {
            BigDecimal a1 = BigDecimal.valueOf(this.getLv2p3().getNovilhasQuant()).multiply(this.getLv2p3().getNovilhasKg());
            BigDecimal a2 = BigDecimal.valueOf(this.getLv2p3().getTerneirosQuant()).multiply(this.getLv2p3().getTerneirosKg());
            BigDecimal a3 = BigDecimal.valueOf(this.getLv2p3().getTerneirasQuant()).multiply(this.getLv2p3().getTerneirasKg());
            BigDecimal a4 = BigDecimal.valueOf(this.getLv2p3().getNovilhoGordoQuant()).multiply(this.getLv2p3().getNovilhoGordoKg());
            BigDecimal a5 = BigDecimal.valueOf(this.getLv2p3().getNovilhoPraRecriaQuant()).multiply(this.getLv2p3().getNovilhoPraRecriaKg());
            BigDecimal a6 = BigDecimal.valueOf(this.getLv2p3().getVacaComCriaQuant()).multiply(this.getLv2p3().getVacaComCriaKg());
            BigDecimal a7 = BigDecimal.valueOf(this.getLv2p3().getVacaGordaQuant()).multiply(this.getLv2p3().getVacaGordaKg());
            BigDecimal a8 = BigDecimal.valueOf(this.getLv2p3().getVacaPrenhaQuant()).multiply(this.getLv2p3().getVacaPrenhaKg());
            BigDecimal a9 = BigDecimal.valueOf(this.getLv2p3().getVacasDeDescarteQuant()).multiply(this.getLv2p3().getVacasDeDescarteKg());
            BigDecimal a10 = BigDecimal.valueOf(this.getLv2p3().getTouroQuant()).multiply(this.getLv2p3().getTouroKg());
            BigDecimal a11 = BigDecimal.valueOf(this.getLv2p3().getTorunosQuant()).multiply(this.getLv2p3().getTorunosKg());

            return a1.add(a2).add(a3).add(a4).add(a5).add(a6).add(a7).add(a8).add(a9).add(a10).add(a11);

        } catch (Exception e) {
            return new BigDecimal("0.0");
        }

    }

    public BigDecimal lotacaoMedia() {
        try {
            BigDecimal area = areaMedia();

            return (BigDecimal.valueOf(totalRebanho().longValue()).divide(area, 2, BigDecimal.ROUND_HALF_UP));
        } catch (Exception e) {
            return new BigDecimal("0");
        }

    }

    public BigDecimal totalReceita() {
        try {
            Double a = this.getLv2p3().getTerneirosValor().doubleValue();
            Double b = this.getLv2p3().getTerneirasValor().doubleValue();
            Double c = this.getLv2p3().getNovilhasValor().doubleValue();
            Double d = this.getLv2p3().getVacasDeDescarteValor().doubleValue();
            Double e = this.getLv2p3().getVacaPrenhaValor().doubleValue();
            Double f = this.getLv2p3().getVacaComCriaValor().doubleValue();
            Double g = this.getLv2p3().getVacaGordaValor().doubleValue();
            Double h = this.getLv2p3().getNovilhoPraRecriaValor().doubleValue();
            Double i = this.getLv2p3().getNovilhoGordoValor().doubleValue();
            Double j = this.getLv2p3().getTorunosValor().doubleValue();
            Double k = this.getLv2p3().getTouroValor().doubleValue();
            Integer a1 = this.getLv2p3().getTerneirosQuant();
            Integer b1 = this.getLv2p3().getTerneirasQuant();
            Integer c1 = this.getLv2p3().getNovilhasQuant();
            Integer d1 = this.getLv2p3().getVacasDeDescarteQuant();
            Integer e1 = this.getLv2p3().getVacaPrenhaQuant();
            Integer f1 = this.getLv2p3().getVacaComCriaQuant();
            Integer g1 = this.getLv2p3().getVacaGordaQuant();
            Integer h1 = this.getLv2p3().getNovilhoPraRecriaQuant();
            Integer i1 = this.getLv2p3().getNovilhoGordoQuant();
            Integer j1 = this.getLv2p3().getTorunosQuant();
            Integer k1 = this.getLv2p3().getTouroQuant();

            return BigDecimal.valueOf(((a * a1) + (b * b1) + (c * c1) + (d * d1) + (e * e1) + (f * f1) + (g * g1) + (h * h1) + (i * i1) + (j * j1) + (k * k1))).setScale(2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal receitaHectare() {
        try {

            return totalReceita().divide(areaMedia(), 2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal totalCustoProducao() {
        try {
            Double a = this.getLv2p4().getMedicamento().doubleValue();
            Double b = this.getLv2p4().getCarrapaticidas().doubleValue();
            Double c = this.getLv2p4().getSal().doubleValue();
            Double d = this.getLv2p4().getCompraDeBovinos().doubleValue();
            Double e = this.getLv2p4().getUntensiliosDeUsoGeral().doubleValue();
            Double f = this.getLv2p4().getSemem().doubleValue();
            Double g = this.getLv2p4().getMaoDeObraFixa().doubleValue();
            Double h = this.getLv2p4().getMaoDeObraVariavel().doubleValue();
            Double i = this.getLv2p4().getSemente().doubleValue();
            Double j = this.getLv2p4().getDefensivosAgriParaPastagem().doubleValue();
            Double k = this.getLv2p4().getAdubosParaPastagem().doubleValue();
            Double l = this.getLv2p4().getCombustivel().doubleValue();
            Double m = this.getLv2p4().getReparosDeMaquina().doubleValue();
            Double n = this.getLv2p4().getReparoDeBenfeitorias().doubleValue();
            Double o = this.getLv2p4().getRacao().doubleValue();
            Double p = this.getLv2p4().getFrete().doubleValue();
            Double q = this.getLv2p4().getArrendamentosDeCampoNativo().doubleValue();
            Double r = this.getLv2p4().getArrendamentosDePastagemCultivada().doubleValue();
            Double s = this.getLv2p4().getImpostos().doubleValue();
            Double t = this.getLv2p4().getOutrasDespesas().doubleValue();

            return BigDecimal.valueOf(a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t).setScale(2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal margembruta() {
        try {
            return (this.totalReceita().subtract(totalCustoProducao())).divide(areaMedia(), 2, BigDecimal.ROUND_HALF_UP);

        } catch (Exception e) {
            return new BigDecimal("0.00");

        }
    }

    public BigDecimal custoAtividadeDeCria() {
        try {

            return (totalCustoProducao().multiply(percentualRebanhoComCria())).divide(BigDecimal.valueOf(100), 2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal custoProducaoHectare() {
        try {

            return totalCustoProducao().divide(areaMedia(), 2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

    public BigDecimal custoTerneiro() {
        try {
            BigDecimal custo = this.custoAtividadeDeCria();

            Integer c1 = this.getLv2p2().getTerneirosJanmar();
            Integer c2 = this.getLv2p2().getTerneirosAbrjun();
            Integer c3 = this.getLv2p2().getTerneirosJulset();
            Integer c4 = this.getLv2p2().getTerneirosOutdez();
            Integer d1 = this.getLv2p2().getTerneirasJanmar();
            Integer d2 = this.getLv2p2().getTerneirasAbrjun();
            Integer d3 = this.getLv2p2().getTerneirasJulset();
            Integer d4 = this.getLv2p2().getTerneirasOutdez();

            return custo.divide(BigDecimal.valueOf(((c1 + c2 + c3 + c4) / 4) + ((d1 + d2 + d3 + d4) / 4)), 2, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal("0");
        }
    }

}
