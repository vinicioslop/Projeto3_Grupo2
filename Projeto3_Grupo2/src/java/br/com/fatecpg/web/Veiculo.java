/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author valre
 */
public class Veiculo {
    
    private String placa;
    private String marca;
    private String modelo;
    private String cor;

    
    public void setVeiculo (String placa, String marca, String modelo, String cor){
    
        this.setPlaca(placa);
        this.setMarca(marca);
        this.setModelo(modelo);
        this.setCor(cor);
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }
    
}
