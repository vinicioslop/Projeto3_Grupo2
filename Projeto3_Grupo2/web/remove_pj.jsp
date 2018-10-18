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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - Pessoa jurídica</title>
    </head>

    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% PessoaJuridica d = Db_pj.getPessoaJuridicas().get(i);%>

    <body id="bd">
    <body id="bd">
        <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Excluir Cadastro Pessoa Júridica</div>


            </div>
        </div>
        <%
            if (request.getParameter("removerPJ") != null) {

                Db_pj.getPessoaJuridicas().remove(i);
                response.sendRedirect("Pessoa_Juridica.jsp");
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
                                <strong style="font-size: 2rem">Nome: <%=d.getNome()%><br/></strong>
                                <strong style="font-size: 2rem">Razaão: <%=d.getRazao()%><br/></strong>
                                <strong style="font-size: 2rem">CNPJ: <%=d.getCnpj()%><br/></strong>
                                <strong style="font-size: 2rem">Telefone: <%=d.getTel_pj()%><br/></strong>

                                <br/><input id="botao"type="submit" name="removerPJ" value="Remover"/>
                                <a id="btn3"class="button floatLeft" href="Pessoa_Juridica.jsp">Voltar</a></div><br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--Rodapé-->
    <%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>
