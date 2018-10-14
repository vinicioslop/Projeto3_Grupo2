<%-- 
    Document   : remove_pj
    Created on : 12/10/2018, 17:13:27
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pj"%>
<%@page import="br.com.fatecpg.web.PessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - Pessoa Física</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% PessoaJuridica d = Db_pj.getPessoaJuridicas().get(i);%>
    
    <body>
        <h2>Remover</h2>
        <%
            if(request.getParameter("removerPJ")!=null){
               
                Db_pj.getPessoaJuridicas().remove(i);
                response.sendRedirect("Pessoa_Juridica.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<%=d.getNome()%><br/>
            Razaão:<%=d.getRazao()%><br/>
            CNPJ:<%=d.getCnpj()%><br/>
            Telefone:<%=d.getTel_pj()%><br/>
            
            <br/><input type="submit" name="removerPJ" value="Remover"/>
        </form>
    </body>
</html>
