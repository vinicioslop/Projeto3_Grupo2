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
public class Db_pj {
    
    public static final ArrayList<PessoaJuridica> CADASTROPJ  = new ArrayList<>();
    
     public static ArrayList<PessoaJuridica> getPessoaJuridicas (){
        
         if (CADASTROPJ.isEmpty()) {
             
            PessoaJuridica d1 = new PessoaJuridica();
            d1.setPessoaJuridica("Shopping Vip-x","Shopping Popular Vip-x Ltda - Me","20.858.360/0001-36", "(13)9999-9999","vipx.com");
            CADASTROPJ.add(d1);
           
            PessoaJuridica d2 = new PessoaJuridica();
            d2.setPessoaJuridica(" J B S ALIMENTOS JBS","JBS COMERCIO ATACADISTA DE ALIMENTOS LTDA","06.180.022/0001-67", "(13)9999-9999","jbs.com.br");
            CADASTROPJ.add(d2);
            
            PessoaJuridica d3 = new PessoaJuridica();
            d3.setPessoaJuridica(" PONTAL SURF SHOP","PONTAL COMERCIO E ESPORTES LTDA"," 11.265.452/0001-11", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d3);
            
         }
         return null;
     }
}
