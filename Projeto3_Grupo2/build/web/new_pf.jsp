<%-- 
    Document   : new_pf
    Created on : 12/10/2018, 17:13:56
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - Contatos</title>
    </head>
    <body>
        <h1>Cadastro de Contatos</h1>
        <h2>Novo</h2>
        <% 
            if(request.getParameter("newPF")!= null){
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                PessoaFisica c = new PessoaFisica();
                c.setDados(nome, email, telefone);
                Db_pf.getContatos().add(c);
                response.sendRedirect("home.jsp");
            
            }
        %> 
        <form>
            Nome:<br/><input type="text" name="nome"/><br/>
            Telefone:<br/><input type="text" name="telefone"/><br/>
            Email:<br/><input type="text" name="email"/><br/>
            <br/><input type="submit" name="newPF" value="Incluir"/>
        </form>
    </body>
</html>
