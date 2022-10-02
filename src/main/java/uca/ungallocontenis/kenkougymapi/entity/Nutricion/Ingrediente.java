package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import java.util.List;

import javax.persistence.*;

@Entity(name = "Ingrediente")
@Table(name = "ingrediente")
public class Ingrediente {
    @Id
    public int id;
    @Column(name="nombre_alimento")
    public String nombreAlimento;
    public float calorias;
    public float proteinas;
    public float carbohidratos;
    public float fibra;
    @Column(name="grasasaturada")
    public float grasaSaturada;
    public float calcio;
    public float magnesio;
    public float fosforo;
    public float zinc;
    public float yodo;
    public float selenio;
    public float hierro;
    public float fluor;
    public float sodio;
    public float potasio;
    public float colesterol;
    @Column(name="vitamina_a")
    public float vitaminaA;
    @Column(name="vitamina_b1")
    public float vitaminaB1;
    @Column(name="vitamina_b2")
    public float vitaminaB2;
    @Column(name="vitamina_b9")
    public float vitaminaB9;
    @Column(name="vitamina_b12")
    public float vitaminaB12;
    @Column(name="vitamina_c")
    public float vitaminaC;
    @Column(name="vitamina_d")
    public float vitaminaD;
    @Column(name="vitamina_e")
    public float vitaminaE;
    @Column(name="vitamina_k")
    public float vitaminaK;
    public float peso_unidad;
    // @ManyToMany(mappedBy = "ingredientes")
    // public List<Receta> recetas;
    @OneToOne
    @JoinColumn(name = "id")
    public CategoriaIngrediente categoria;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreAlimento() {
        return nombreAlimento;
    }

    public void setNombreAlimento(String nombreAlimento) {
        this.nombreAlimento = nombreAlimento;
    }

    public float getCalorias() {
        return calorias;
    }

    public void setCalorias(float calorias) {
        this.calorias = calorias;
    }

    public float getProteinas() {
        return proteinas;
    }

    public void setProteinas(float proteinas) {
        this.proteinas = proteinas;
    }

    public float getCarbohidratos() {
        return carbohidratos;
    }

    public void setCarbohidratos(float carbohidratos) {
        this.carbohidratos = carbohidratos;
    }

    public float getFibra() {
        return fibra;
    }

    public void setFibra(float fibra) {
        this.fibra = fibra;
    }

    public float getGrasaSaturada() {
        return grasaSaturada;
    }

    public void setGrasaSaturada(float grasaSaturada) {
        this.grasaSaturada = grasaSaturada;
    }

    public float getCalcio() {
        return calcio;
    }

    public void setCalcio(float calcio) {
        this.calcio = calcio;
    }

    public float getMagnesio() {
        return magnesio;
    }

    public void setMagnesio(float magnesio) {
        this.magnesio = magnesio;
    }

    public float getFosforo() {
        return fosforo;
    }

    public void setFosforo(float fosforo) {
        this.fosforo = fosforo;
    }

    public float getZinc() {
        return zinc;
    }

    public void setZinc(float zinc) {
        this.zinc = zinc;
    }

    public float getYodo() {
        return yodo;
    }

    public void setYodo(float yodo) {
        this.yodo = yodo;
    }

    public float getSelenio() {
        return selenio;
    }

    public void setSelenio(float selenio) {
        this.selenio = selenio;
    }

    public float getHierro() {
        return hierro;
    }

    public void setHierro(float hierro) {
        this.hierro = hierro;
    }

    public float getFluor() {
        return fluor;
    }

    public void setFluor(float fluor) {
        this.fluor = fluor;
    }

    public float getSodio() {
        return sodio;
    }

    public void setSodio(float sodio) {
        this.sodio = sodio;
    }

    public float getPotasio() {
        return potasio;
    }

    public void setPotasio(float potasio) {
        this.potasio = potasio;
    }

    public float getColesterol() {
        return colesterol;
    }

    public void setColesterol(float colesterol) {
        this.colesterol = colesterol;
    }

    public float getVitaminaA() {
        return vitaminaA;
    }

    public void setVitaminaA(float vitaminaA) {
        this.vitaminaA = vitaminaA;
    }

    public float getVitaminaB1() {
        return vitaminaB1;
    }

    public void setVitaminaB1(float vitaminaB1) {
        this.vitaminaB1 = vitaminaB1;
    }

    public float getVitaminaB2() {
        return vitaminaB2;
    }

    public void setVitaminaB2(float vitaminaB2) {
        this.vitaminaB2 = vitaminaB2;
    }

    public float getVitaminaB9() {
        return vitaminaB9;
    }

    public void setVitaminaB9(float vitaminaB9) {
        this.vitaminaB9 = vitaminaB9;
    }

    public float getVitaminaB12() {
        return vitaminaB12;
    }

    public void setVitaminaB12(float vitaminaB12) {
        this.vitaminaB12 = vitaminaB12;
    }

    public float getVitaminaC() {
        return vitaminaC;
    }

    public void setVitaminaC(float vitaminaC) {
        this.vitaminaC = vitaminaC;
    }

    public float getVitaminaD() {
        return vitaminaD;
    }

    public void setVitaminaD(float vitaminaD) {
        this.vitaminaD = vitaminaD;
    }

    public float getVitaminaE() {
        return vitaminaE;
    }

    public void setVitaminaE(float vitaminaE) {
        this.vitaminaE = vitaminaE;
    }

    public float getVitaminaK() {
        return vitaminaK;
    }

    public void setVitaminaK(float vitaminaK) {
        this.vitaminaK = vitaminaK;
    }

    public float getPeso_unidad() {
        return peso_unidad;
    }

    public void setPeso_unidad(float peso_unidad) {
        this.peso_unidad = peso_unidad;
    }

    public CategoriaIngrediente getCategoria() {
        return categoria;
    }

    public void setCategoria(CategoriaIngrediente categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Ingrediente [calcio=" + calcio + ", calorias=" + calorias + ", carbohidratos=" + carbohidratos
                + ", categoria=" + categoria + ", colesterol=" + colesterol + ", fibra=" + fibra + ", fluor=" + fluor
                + ", fosforo=" + fosforo + ", grasaSaturada=" + grasaSaturada + ", hierro=" + hierro + ", id=" + id
                + ", magnesio=" + magnesio + ", nombreAlimento=" + nombreAlimento + ", peso_unidad=" + peso_unidad
                + ", potasio=" + potasio + ", proteinas=" + proteinas + ", selenio=" + selenio + ", sodio=" + sodio
                + ", vitaminaA=" + vitaminaA + ", vitaminaB1=" + vitaminaB1 + ", vitaminaB12=" + vitaminaB12
                + ", vitaminaB2=" + vitaminaB2 + ", vitaminaB9=" + vitaminaB9 + ", vitaminaC=" + vitaminaC
                + ", vitaminaD=" + vitaminaD + ", vitaminaE=" + vitaminaE + ", vitaminaK=" + vitaminaK + ", yodo="
                + yodo + ", zinc=" + zinc + "]";
    }
}