<%-- 
    Document   : Pessoa_Juridica
    Created on : 13/10/2018, 19:07:11
    Author     : vinic
--%>

<%@page import="br.com.fatecpg.web.PessoaJuridica"%>
<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>TesteEeEeEe - Vinícius</h1>
        <a href="new_pf.jsp"><button>Nova Pessoa Fisica</button></a>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
                <%for(PessoaJuridica c: Db_pf.getPessoaJuridica()){%>
                
                
                <%}%>
            </tr>
            <%for(PessoaFisica npf: Db_pf.getPessoaFisicas()){%>
            <tr>
                <td><%= npf.getNome()%></td>
                <td><%= npf.getCpf()%></td>
                <td><%= npf.getEmail()%></td>
                <td><%= npf.getTel_pf()%></td>
                <% int i = Db_pf.getPessoaFisicas().indexOf(npf); %>
                <td>
                    <a href="alter_pf.jsp?i=<%= i %>"><button>Alterar</button></a>
                    <a href="remove_pf.jsp?i=<%= i %>"><button>Remover</button></a>
                </td>
            </tr>
            <%}%>
        </table>
        <a href="home.jsp"><button>Voltar</button></a>
    </body>
</html>
