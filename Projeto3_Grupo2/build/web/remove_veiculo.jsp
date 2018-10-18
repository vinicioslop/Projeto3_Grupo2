<%-- 
    Document   : remove_veiculo
    Created on : 13/10/2018, 00:49:25
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_v"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <title>Remover - Veículo</title>
    </head>

    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% Veiculo v = Db_v.getVeiculos().get(i);%>

    <body id="bd">
        <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Excluir Cadastro Veiculo</div>


            </div>
        </div>


        <%
            if (request.getParameter("removerV") != null) {

                Db_v.getVeiculos().remove(i);
                response.sendRedirect("Veiculo.jsp");
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
                                <strong style="font-size: 2rem">Placa: <%=v.getPlaca()%><br/></strong>
                                <strong style="font-size: 2rem">Marca: <%=v.getMarca()%><br/></strong>
                                <strong style="font-size: 2rem">Modelo: <%=v.getModelo()%><br/></strong>
                                <strong style="font-size: 2rem">Cor: <%=v.getCor()%><br/></strong>

                                <br/><input id="botao" type="submit" name="removerV" value="Remover"/>
                                <a id="btn3"class="button floatLeft" href="Veiculo.jsp">Voltar</a></div><br/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Rodapé-->   
        <%@include file="WEB-INF/jspf/footer.jspf"%> 
    </body>
</html>
