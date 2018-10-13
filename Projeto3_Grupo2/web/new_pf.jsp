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
        <h1>Cadastro Pessoa Fisica</h1>
        
        <%try {
            if(request.getParameter("novoPF")!=null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String tel_pf = request.getParameter("tel_pf");
                String email = request.getParameter("email");
                
                PessoaFisica npf = new PessoaFisica();
                npf.setPessoaFisica(nome, cpf, tel_pf, email);
                Db_pf.getPessoaFisicas().add(npf);
                response.sendRedirect("home.jsp");
            }
            %>
            
        <form>
            Nome: <br><input type="text" name="nome"/><br>
            CPF:<br><input type="text" name="cpf"/><br>
            Telefone: <br><input type="text" name="tel_pf"/><br>
            E-mail: <br><input type="text" name="email"/><br>
            <br><input type="submit" name="veiculo" value="Incluir"/>
        </form>
               
            <%} catch (Exception e){%>
            
           <%}%>
    </body>
</html>
