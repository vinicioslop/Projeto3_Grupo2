package br.com.fatecpg.web;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
            v1.setVeiculo("RBO3090", "Maserati", "GranTurismo", "Prata");
            VEICULO.add(v2);
            
            Veiculo v3 = new Veiculo();
            v1.setVeiculo("UUO3760", "jac", "T6", "Branco");
            VEICULO.add(v3);
        }
        
        return null;
        
    }
}
