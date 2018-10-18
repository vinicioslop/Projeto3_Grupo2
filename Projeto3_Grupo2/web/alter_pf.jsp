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
                <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Pessoa Física</title>
        
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%PessoaFisica npf = Db_pf.getPessoaFisicas().get(i);%>
    
    <body>
        <h1>Cadastro de Pessoa Física</h1>
        <h2>Alterar</h2>
        <%
            if(request.getParameter("alterPF")!=null){
                npf.setNome(request.getParameter("nome"));
                npf.setCpf(request.getParameter("cpf"));
                npf.setEmail(request.getParameter("email"));
                npf.setTel_pf(request.getParameter("tel_pf"));
                Db_pf.getPessoaFisicas().set(i,npf);
                response.sendRedirect("Pessoa_Fisica.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="nome" value="<%=npf.getNome()%>"/><br/>
            Nome:<br/><input type="text" name="cpf" value="<%=npf.getCpf()%>"/><br/>
            Email:<br/><input type="text" name="email" value="<%=npf.getEmail()%>"/><br/>
            Telefone:<br/><input type="text" name="tel_pf" value="<%=npf.getTel_pf()%>"/><br/>
            <br/><input type="submit" name="alterPF" value="Alterar"/>
        </form>
            <!--Rodapé-->   
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>