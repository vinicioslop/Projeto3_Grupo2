<%-- 
    Document   : Pessoa_Juridica
    Created on : 13/10/2018, 19:07:11
    Author     : vinic
--%>

<%@page import="br.com.fatecpg.web.Db_pj"%>
<%@page import="br.com.fatecpg.web.PessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoa Júridica</title>
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
                <div id="Text1"> Manutenção de Pessoa Juridica</div>

            </div>
        </div>
          
        
        <div id="TabPF" class="container-fluid">
            <div class="jumbotron text-center">
                 

                <div class="row text-center">
                    <h2>Listagem</h2>
                    
                    <table class="table table-striped" border="1">
                       
                    <tr>
                        <th>Nome</th>
                        <th>Razão</th>
                        <th>CNPJ</th>
                        <th>Telefone</th>
                        <th>Site</th>
                        <th>Comandos</th>
                    <%for (PessoaJuridica d : Db_pj.getPessoaJuridicas()) {%>


                <%}%>
            </tr>
            <%for (PessoaJuridica d : Db_pj.getPessoaJuridicas()) {%>
            <tr>
                <td><%= d.getNome()%></td>
                <td><%= d.getRazao()%></td>
                <td><%= d.getCnpj()%></td>
                <td><%= d.getTel_pj()%></td>
                <td><%= d.getSite()%></td>
                <% int i = Db_pj.getPessoaJuridicas().indexOf(d);%>
                <td>
                    <a href="alter_pj.jsp?i=<%= i%>"><button id="botao">Alterar</button></a>
                    <a href="remove_pj.jsp?i=<%= i%>"><button id="botao">Remover</button></a>
                </td>
            </tr>
            <%}%>
        </table>
                <div>
                    <div>
                        <a id="btn1"class="button floatLeft" href="new_pj.jsp">Novo Cadastro</a></div><br
                </div>
            </div>
        </div>
        </div> 

 

        <!--Rodapé-->   
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
