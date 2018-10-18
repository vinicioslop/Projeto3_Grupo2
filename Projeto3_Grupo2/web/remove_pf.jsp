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
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <title>Remover - Pessoa Física</title>
    </head>

    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% PessoaFisica npf = Db_pf.getPessoaFisicas().get(i);%>

    <body id="bd">
        
           <body id="bd">
               <!--Jumbotron-->
               <div class="container-fluid">
                   <div class="jumbotron text-center">
                       <div id="Text1"> Excluir Cadastro Pessoa Física</div>


                   </div>
               </div>
        <%
            if (request.getParameter("removerPF") != null) {

                Db_pf.getPessoaFisicas().remove(i);
                response.sendRedirect("Pessoa_Fisica.jsp");
            }
        %>
        <!--Forms-->
        <div class="container-fluid text-center" >
            <div class="jumbotron text-center">
                <div class="row text-center">
                    <div class="col-sm-4"></div> 
                    <div class="col-sm-4">
                        <div class="thumbnail" style="align-content: center;  
                         border-width: 10px">
                            <form class="form-horizontal">
                                <strong style="font-size: 2rem">Indice: <%= i%><br/><br/></strong>
                                <input type="hidden" name="i" value="<%=i%>"/>
                                <strong style="font-size: 2rem">Nome: <%=npf.getNome()%><br/></strong>
                                <strong style="font-size: 2rem">CPF: <%=npf.getCpf()%><br/></strong>
                                <strong style="font-size: 2rem">Telefone: <%=npf.getTel_pf()%><br/></strong>
                                <strong style="font-size: 2rem">Email: <%=npf.getEmail()%><br/></strong>

                                <br/><input id="botao"type="submit" name="removerPF" value="Remover"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
                                <br>
<!--Rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
