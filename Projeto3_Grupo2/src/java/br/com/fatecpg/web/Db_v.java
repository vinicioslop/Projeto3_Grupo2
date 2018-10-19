/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.fatecpg.web;
import java.util.ArrayList;

/**
 *
 * @author valre
 */
public class Db_v {
    
    public static final ArrayList<Veiculo> VEICULO  = new ArrayList<>();
    
    public static ArrayList<Veiculo> getVeiculos (){
        
        if (VEICULO.isEmpty()) {
            
            Veiculo v1 = new Veiculo();
            v1.setVeiculo("EBO9090", "Hyundai", "Elantra", "Vermelho");
            VEICULO.add(v1);
           
            Veiculo v2 = new Veiculo();
            v2.setVeiculo("RBO3090", "Maserati", "GranTurismo", "Prata");
            VEICULO.add(v2);
            
            Veiculo v3 = new Veiculo();
            v3.setVeiculo("UUO3760", "Volkswagen", "Atlas Tanoak", "Branco");
            VEICULO.add(v3);
            
            Veiculo v4 = new Veiculo();
            v4.setVeiculo("UUO3760", "Audi", "TT RS Coupé", "Laranja");
            VEICULO.add(v4);
            
            Veiculo v5 = new Veiculo();
            v5.setVeiculo("UUO3760", "Audi", "Audi R8 Coupé", "Preto");
            VEICULO.add(v5);
            
            Veiculo v6 = new Veiculo();
            v6.setVeiculo("UUO3760", "Ford", "Lincoln Futura", "Preto");
            VEICULO.add(v6);
            
            Veiculo v7 = new Veiculo();
            v7.setVeiculo("UUO3760", "Fiat", "Dodge Dart", "Azul");
            VEICULO.add(v7);
            
            Veiculo v8 = new Veiculo();
            v8.setVeiculo("UUO3760", "Fiat", "TORO ENDURANCE", "Roxo");
            VEICULO.add(v8);
            
            Veiculo v9 = new Veiculo();
            v9.setVeiculo("UUO3760", "Ford", "Mustang", "Prata");
            VEICULO.add(v9);
            
            Veiculo v10 = new Veiculo();
            v10.setVeiculo("UUO3760", "Chevrolet", "CAMARO CONVERSÍVEL", "Vermelho");
            VEICULO.add(v10);
            
        }
        
        return VEICULO;
        
    }
}
