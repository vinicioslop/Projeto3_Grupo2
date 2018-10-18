<%-- 
    Document   : new_veiculo
    Created on : 13/10/2018, 00:48:07
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_v"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - Veiculos</title>
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
    </head>
    <body id="bd">
        <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Cadastro de Veiculos</div>

            </div>
        </div>



        <%try {

                if (request.getParameter("novoV") != null) {
                    String placa = request.getParameter("placa");
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");

                    Veiculo v = new Veiculo();
                    v.setVeiculo(placa, marca, modelo, cor);
                    Db_v.getVeiculos().add(v);
                    response.sendRedirect("Veiculo.jsp");

                }%>
                <!--Forms-->
                <div class="container-fluid text-center" >
                    <div class="jumbotron text-center">
                        <div class="row text-center">
                            <div class="col-sm-4"></div> 
                            <div class="col-sm-4">
                                <div class="thumbnail" style="align-content: center;  
                         border-width: 10px">
                                    <form>
                                        <strong/> Placa: <br><input style="border-radius: 4px" type="text" name="placa"/><br>
                                        <strong/> Marca: <br><input style="border-radius: 4px" type="text" name="marca"/><br>
                                        <strong/> Modelo:<br><input style="border-radius: 4px" type="text" name="modelo"/><br>
                                        <strong/> Cor: <br><input style="border-radius: 4px" type="text" name="cor"/><br>
                                        <br><input id="botao" type="submit" name="novoV" value="Incluir"/>
                                        <a id="btn3"class="button floatLeft" href="Veiculo.jsp">Voltar</a></div><br/>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </form>

        <%} catch (Exception e) {%>

        <%}%>

        <br>
        <!--Rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
