<%-- 
    Document   : Pessoa_Fisica
    Created on : 13/10/2018, 18:58:05
    Author     : vinic
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pessoa Fisica</title>
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body id="bd">
        <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Manutenção de Pessoa Física</div>

            </div>
        </div>

        <!--Tabela-->
        <div id="TabPF" class="container-fluid">
            <div class="jumbotron text-center">
                 

                <div class="row text-center">
                    <h2>Listagem</h2>
                    
                    <table class="table table-striped" border="2">
                       
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Comandos</th>
                            <%for (PessoaFisica c : Db_pf.getPessoaFisicas()) {%>


                        <%}%>
                    </tr>
                    <%for (PessoaFisica npf : Db_pf.getPessoaFisicas()) {%>
                    <tr>
                        <td><%= npf.getNome()%></td>
                        <td><%= npf.getCpf()%></td>
                        <td><%= npf.getEmail()%></td>
                        <td><%= npf.getTel_pf()%></td>
                        <% int i = Db_pf.getPessoaFisicas().indexOf(npf);%>
                        <td>
                            <a href="alter_pf.jsp?i=<%= i%>"><button id="botao">Alterar</button></a>
                            <a href="remove_pf.jsp?i=<%= i%>"><button id="botao">Remover</button></a>
                        </td>
                    </tr>
                    <%}%>
                </table>
                
                
                
                <div>
                    <div>
                        <a id="btn1"class="button floatLeft" href="new_pf.jsp">Novo Cadastro</a></div><br
                </div>
            </div>
            <div>

       <!--Rodapé-->   
       <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
