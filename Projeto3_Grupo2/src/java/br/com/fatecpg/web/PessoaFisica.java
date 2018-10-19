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
public class PessoaFisica {
    
    private String nome;
    private String cpf;
    private String tel_pf;
    private String email;
    
public void setPessoaFisica (String nome, String cpf, String tel_pf, String email){
        
        this.setNome(nome);
        this.setCpf(cpf);
        this.setTel_pf(tel_pf);
        this.setEmail(email);
    }
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTel_pf() {
        return tel_pf;
    }

    public void setTel_pf(String tel_pf) {
        this.tel_pf = tel_pf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
  
}
