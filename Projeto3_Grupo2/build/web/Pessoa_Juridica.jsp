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
    </head>
    <body>
        <h1>Página de Manutenção de Pessoa Júridica</h1>
        <a href="new_pj.jsp"><button>Nova Pessoa Jurídica</button></a>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Razão</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Site</th>
                <th>Comandos</th>
                <%for(PessoaJuridica d: Db_pj.getPessoaJuridicas()){%>
                
                
                <%}%>
            </tr>
            <%for(PessoaJuridica d: Db_pj.getPessoaJuridicas()){%>
            <tr>
                <td><%= d.getNome()%></td>
                <td><%= d.getRazao()%></td>
                <td><%= d.getCnpj()%></td>
                <td><%= d.getTel_pj()%></td>
                <td><%= d.getSite()%></td>
                <% int i = Db_pj.getPessoaJuridicas().indexOf(d); %>
                <td>
                    <a href="alter_pj.jsp?i=<%= i %>"><button>Alterar</button></a>
                    <a href="remove_pj.jsp?i=<%= i %>"><button>Remover</button></a>
                </td>
            </tr>
            <%}%>
        </table>
        <a href="home.jsp"><button>Voltar</button></a>
    </body>
</html>
