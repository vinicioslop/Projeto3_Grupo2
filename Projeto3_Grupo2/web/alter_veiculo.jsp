<%-- 
    Document   : alter_veiculo
    Created on : 13/10/2018, 00:48:50
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Veículo</title>
    </head>

    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Veiculo v = Db_v.getVeiculos().get(i);%>

    <body id="bd">

        <!--Jumbotron-->
               <div class="container-fluid">
                   <div class="jumbotron text-center">
                       <div id="Text1"> Alterar Cadastro Veiculo</div>


                   </div>
               </div>

        <%
            if (request.getParameter("alterV") != null) {
                v.setPlaca(request.getParameter("placa"));
                v.setMarca(request.getParameter("marca"));
                v.setModelo(request.getParameter("modelo"));
                v.setCor(request.getParameter("cor"));
                Db_v.getVeiculos().set(i, v);
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
                                <strong style="font-size: 2rem">Indice: <%= i%><br/></strong>
                                <input type="hidden" name="i" value="<%=i%>"/>
                                <strong>Placa:</strong><br/><input style="border-radius: 4px" type="text" name="placa" value="<%=v.getPlaca()%>"/><br/>
                                <strong>Marca:</strong><br/><input style="border-radius: 4px" type="text" name="marca" value="<%=v.getMarca()%>"/><br/>
                                <strong>Modelo:</strong><br/><input style="border-radius: 4px" type="text" name="modelo" value="<%=v.getModelo()%>"/><br/>
                                <strong>Cor:</strong><br/><input style="border-radius: 4px" type="text" name="cor" value="<%=v.getCor()%>"/><br/>
                                <br/><input id="botao"type="submit" name="alterV" value="Alterar"/>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
                                <br>

        <!--Rodapé-->   
        <%@include file="WEB-INF/jspf/footer.jspf"%> 
    </body>
</html>

