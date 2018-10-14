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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veículo</title>
    </head>
    <body>
        <h1>Página de Manutenção de Veículo</h1>
        <a href="new_pj.jsp"><button>Novo Veículo</button></a>
        <table border="1">
            <tr>
                <th>Placa</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Comandos</th>
                <%for(Veiculo v: Db_v.getVeiculos()){%>
                
                
                <%}%>
            </tr>
            <%for(Veiculo v: Db_v.getVeiculos()){%>
            <tr>
                <td><%= v.getPlaca()%></td>
                <td><%= v.getMarca()%></td>
                <td><%= v.getModelo()%></td>
                <td><%= v.getCor()%></td>
                <% int i = Db_v.getVeiculos().indexOf(v); %>
                <td>
                    <a href="alter_veiculo.jsp?i=<%= i %>"><button>Alterar</button></a>
                    <a href="remove_veiculo.jsp?i=<%= i %>"><button>Remover</button></a>
                </td>
            </tr>
            <%}%>
        </table>
        <a href="home.jsp"><button>Voltar</button></a>
    </body>
</html>
