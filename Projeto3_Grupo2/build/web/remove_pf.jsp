<%-- 
    Document   : remove_pf
    Created on : 12/10/2018, 17:13:16
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - Pessoa Física</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%PessoaFisica npf = Db_pf.getPessoaFisicas().get(i);%>
    
    <body>
        <h2>Remover</h2>
        <%
            if(request.getParameter("removerPF")!=null){
               
                Db_pf.getPessoaFisicas().remove(i);
                response.sendRedirect("home.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<%=npf.getNome()%><br/>
            CPF:<%=npf.getCpf()%><br/>
            Telefone:<%=npf.getTel_pf()%>
            Email:<%=npf.getEmail()%><br/>
            
            <br/><input type="submit" name="removerPF" value="Remover"/>
        </form>
    </body>
</html>
