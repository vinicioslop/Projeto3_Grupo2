<%-- 
    Document   : alter_pf
    Created on : 12/10/2018, 17:12:30
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Contatos</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% PessoaFisica c = Db_pf.getPessoaFisicas().get(i);%>
    
    <body>
        <h1>Cadastro de Contatos</h1>
        <h2>Alterar</h2>
        <%
            if(request.getParameter("alterarContato")!=null){
                c.setNome(request.getParameter("nome"));
                c.setEmail(request.getParameter("email"));
                c.setTel_pf(request.getParameter("telefone"));
                Db_pf.getPessoaFisicas().set(i,c);
                response.sendRedirect("home.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="nome" value="<%=c.getNome()%>"/><br/>
            Telefone:<br/><input type="text" name="telefone" value="<%=c.getTel_pf()%>"/><br/>
            Email:<br/><input type="text" name="email" value="<%=c.getEmail()%>"/><br/>
            <br/><input type="submit" name="alterarContato" value="Alterar"/>
        </form>
    </body>
</html>