<%-- 
    Document   : Veiculo
    Created on : 14/10/2018, 19:06:37
    Author     : vinic
--%>

<%@page import="br.com.fatecpg.web.Db_v"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veículo</title>
    </head>
    <body id="bd">
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Manutenção de Veiculos</div>
            </div>
        </div>




        <div id="TabPF" class="container-fluid">
            <div class="jumbotron text-center">


                <div class="row text-center">
                    <h2>Listagem</h2>

                    <table class="table table-striped" border="2">

                        <tr>
                            <th>Placa</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Cor</th>

                            <th>Comandos</th>
                                <%for (Veiculo v : Db_v.getVeiculos()) {%>


                            <%}%>
                        </tr>
                        <%for (Veiculo v : Db_v.getVeiculos()) {%>
                        <tr>
                            <td><%= v.getPlaca()%></td>
                            <td><%= v.getMarca()%></td>
                            <td><%= v.getModelo()%></td>
                            <td><%= v.getCor()%></td>
                            <% int i = Db_v.getVeiculos().indexOf(v);%>
                            <td>
                                <a href="alter_veiculo.jsp?i=<%= i%>"><button id="botao">Alterar</button></a>
                                <a href="remove_veiculo.jsp?i=<%= i%>"><button id="botao">Remover</button></a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                     <div>
                    <div>
                        <a id="btn1"class="button floatLeft" href="new_veiculo.jsp">Novo Cadastro</a></div><br
                </div>
            </div>
            <div>
                </div>
            </div>
        </div>
        <a href="home.jsp"><button>Voltar</button></a>
    </body>
</html>
