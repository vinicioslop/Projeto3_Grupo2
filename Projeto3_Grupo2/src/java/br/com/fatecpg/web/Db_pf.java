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
public class Db_pf {
    
    public static final ArrayList<PessoaFisica> CADASTROPF  = new ArrayList<>();
    
    public static ArrayList<PessoaFisica> getPessoaFisicas(){
        
        if (CADASTROPF.isEmpty()) {
            
           PessoaFisica c1 = new PessoaFisica();
           c1.setPessoaFisica("Valter", "48831220800", "(13)35766179", "valter@gaiden.com");
           CADASTROPF.add(c1);
           
           PessoaFisica c2 = new PessoaFisica();
           c2.setPessoaFisica("Gilson", "48833020800", "(13)35730179", "gilson@gaiden.com");
           CADASTROPF.add(c2);
           
           PessoaFisica c3 = new PessoaFisica();
           c3.setPessoaFisica("Amaro", "48831300800", "(13)35761179", "amaro@gaiden.com");
           CADASTROPF.add(c3);
        }
        return CADASTROPF;
        
    }
}
