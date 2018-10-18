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
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Pessoa Juridica</title>
    </head>

    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%PessoaJuridica d = Db_pj.getPessoaJuridicas().get(i);%>

    <body id="bd">

        <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Alterar Cadastro Pessoa Jurídica</div>

            </div>
        </div>

        <%
            if (request.getParameter("alterPJ") != null) {
                d.setNome(request.getParameter("nome"));
                d.setRazao(request.getParameter("razao"));
                d.setCnpj(request.getParameter("cnpj"));
                d.setTel_pj(request.getParameter("tel_pj"));
                Db_pj.getPessoaJuridicas().set(i, d);
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
                                <strong style="font-size: 2rem">Indice: <%= i%><br/></strong>
                                <input type="hidden" name="i" value="<%=i%>"/>
                                <strong>Nome:</strong><br/><input style="border-radius: 4px" type="text" name="nome" value="<%=d.getNome()%>"/><br/>
                                <strong>Razão:</strong><br/><input style="border-radius: 4px" type="text" name="razao" value="<%=d.getRazao()%>"/><br/>
                                <strong>CNPJ:</strong><br/><input style="border-radius: 4px" type="text" name="cnpj" value="<%=d.getCnpj()%>"/><br/>
                                <strong>Telefone:</strong><br/><input style="border-radius: 4px" type="text" name="tel_pj" value="<%=d.getTel_pj()%>"/><br/>
                                <br/><input id="botao" type="submit" name="alterPJ" value="Alterar"/>
                            </form>
                            <!--Rodapé-->   
                            <%@include file="WEB-INF/jspf/footer.jspf"%>

                        </div>
                    </div>
                </div>
            </div>
        </div>
                            <br>
                            <br>
    </body>
</html>
