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
    
     public static ArrayList<PessoaJuridica> getPessoaJuridicas(){
        
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
            
            PessoaJuridica d4 = new PessoaJuridica();
            d4.setPessoaJuridica("CCR TEC","TEC SERVICOS DE INSTALACOES E MANUTENCOES EIRELI - ME"," 21.573.658/0001-62", "(13)9999-9999","tecservicos.com");
            CADASTROPJ.add(d4);
            
            PessoaJuridica d5 = new PessoaJuridica();
            d5.setPessoaJuridica("II AN-JU"," AN JU FIAT LUX SEGURANCA PRIVADA LTDA"," 07.732.226/0001-26", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d5);
            
            PessoaJuridica d6 = new PessoaJuridica();
            d6.setPessoaJuridica("LUCAN CONSORCIOS"," LUCAN INTERMEDIACAO DE CONSORCIOS DE VEICULOS LTDA"," 07.463.257/0001-29", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d6);
            
            PessoaJuridica d7 = new PessoaJuridica();
            d7.setPessoaJuridica(" GAIA RENT A CAR"," GAIA LOCACAO DE VEICULOS LTDA - ME"," 08.832.737/0001-82", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d7);
            
            PessoaJuridica d8 = new PessoaJuridica();
            d8.setPessoaJuridica("JIN JIN SUSHI","POPP FAST FOOD EIRELI - EPP","18.288.749/0001-41", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d8);
            
            PessoaJuridica d9 = new PessoaJuridica();
            d9.setPessoaJuridica(" TAN TRANPORTES","TAN TRANSPORTE RODOVIARIO DE CARGAS LTDA - ME"," 08.710.263/0001-04", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d9);
            
            PessoaJuridica d10 = new PessoaJuridica();
            d10.setPessoaJuridica("11","DEZEBELES PEREIRA COMERCIO DE CONFECCOES LTDA - EPP","14.642.331/0001-30", "(13)9999-9999","pontal.com");
            CADASTROPJ.add(d10);
            
         }
         return CADASTROPJ;
     }
}
