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
           c2.setPessoaFisica("Andreia", "488330212322", "(13)34710179", "andreia@gaiden.com");
           CADASTROPF.add(c2);
           
           PessoaFisica c3 = new PessoaFisica();
           c3.setPessoaFisica("Gabriel", "48831301221", "(13)35761239", "gabriel@gaiden.com");
           CADASTROPF.add(c3);
           
           PessoaFisica c4 = new PessoaFisica();
           c4.setPessoaFisica("Breno", "48830909800", "(13)35760000", "breno@gaiden.com");
           CADASTROPF.add(c4);
           
           PessoaFisica c5 = new PessoaFisica();
           c5.setPessoaFisica("Cleber", "48831234800", "(13)32332179", "cleber@gaiden.com");
           CADASTROPF.add(c5);
           
           PessoaFisica c6 = new PessoaFisica();
           c6.setPessoaFisica("Lilian", "48989900800", "(13)35761234", "lilian@gaiden.com");
           CADASTROPF.add(c6);
           
           PessoaFisica c7 = new PessoaFisica();
           c7.setPessoaFisica("Roger", "46571876800", "(13)35761435", "roger@gaiden.com");
           CADASTROPF.add(c7);
           
           PessoaFisica c8 = new PessoaFisica();
           c8.setPessoaFisica("Julia", "4444323800", "(13)35766679", "julia@gaiden.com");
           CADASTROPF.add(c8);
           
           PessoaFisica c9 = new PessoaFisica();
           c9.setPessoaFisica("Margo", "43331300345", "(13)33361179", "margo@gaiden.com");
           CADASTROPF.add(c9);
           
           PessoaFisica c10 = new PessoaFisica();
           c10.setPessoaFisica("Gilson", "33333211234", "(13)35761179", "gilson@gaiden.com");
           CADASTROPF.add(c10);
           
        }
        return CADASTROPF;
        
    }
}
