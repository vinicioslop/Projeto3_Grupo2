<%-- 
    Document   : alter_pj
    Created on : 12/10/2018, 17:12:59
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pj"%>
<%@page import="br.com.fatecpg.web.PessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Pessoa Júridica</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%PessoaJuridica d = Db_pj.getPessoaJuridicas().get(i);%>
    
    <body>
        <h2>Alterar</h2>
        <%
            if(request.getParameter("alterPJ")!=null){
                d.setNome(request.getParameter("nome"));
                d.setRazao(request.getParameter("razao"));
                d.setCnpj(request.getParameter("cnpj"));
                d.setTel_pj(request.getParameter("tel_pj"));
                Db_pj.getPessoaJuridicas().set(i,d);
                response.sendRedirect("Pessoa_Juridica.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="nome" value="<%=d.getNome()%>"/><br/>
            Razão:<br/><input type="text" name="razao" value="<%=d.getRazao()%>"/><br/>
            CNPJ:<br/><input type="text" name="cnpj" value="<%=d.getCnpj()%>"/><br/>
            Telefone:<br/><input type="text" name="tel_pj" value="<%=d.getTel_pj()%>"/><br/>
            <br/><input type="submit" name="alterPJ" value="Alterar"/>
        </form>
    </body>
</html>
