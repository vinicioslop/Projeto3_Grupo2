<%-- 
    Document   : home
    Created on : 12/10/2018, 17:24:29
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title> Home </title>
        <!--cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>

    </head>
    
    <body id="bd">
        <br/>
        <br/>
        <!--Jumbotron-->
        <div class="container-fluid">
            <div id="JB" class="jumbotron">
                <div class="container-fluid" style="margin-left: -7%">
                <div class="row ">
                    <div id="botoes"class="col-sm-4">
                        <h3>Tabela de Pessoa Fisica</h3>
                        <a href="Pessoa_Fisica.jsp"><button type="button"class="btn btn-primary btn-lg">Manutenção de Pessoa Física</button></a>
                    </div>  
                    
                    <div class="col-sm-4" style="align-items: center">
                        <h3>Tabela de Pessoa Juridica</h3>
                        <a href="Pessoa_Juridica.jsp"><button type="button" class="btn btn-primary btn-lg">Manutenção de Pessoa Juridica</button></a>
                    </div>
                    
                    <div>
                        <h3>Tabela de Veiculos</h3>
                        <a href="Veiculo.jsp"><button type="button"class="btn btn-primary btn-lg">Manutenção de Veículo</button></a>
                    </div>
                </div>

            </div>

        </div>
        </div>


        <div class="container-fluid"> 
            <div id="JB2" class="jumbotron">
                <div class="container-fluid text-center">
                    <h2>Integrantes</h2><br>

                    <div class="row text-center slideanim">
                        <div class="col-sm-4">
                            <div class="thumbnail">


                                <p><h2><strong>Daniel Gomes</strong></h2></p>
                                <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>

                                <a href="https://github.com/danielbgo" <button class="btn btn-primary" >GitHub</button></a>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="thumbnail">

                                <p><h2><strong>Valéria Regina</strong></h2></p>
                                <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>

                                <a href="https://github.com/ValeriaRoyal" <button class="btn btn-primary" >GitHub</button></a>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <!--<img src="Imagens/IMG_20160930_191248.jpg" alt=""/>-->
                                <p><h2><strong>Vinicios</strong></h2></p>
                                <p><h4>Estudante de Análise e Desenvolvimento de Sistemas em Fatec - Praia Grande</h4></p>

                                <a href="https://github.com/vinicioslop" <button class="btn btn-primary" >GitHub</button></a>
                            </div>
                        </div>
                    </div>     
                </div>     
            </div>     
        </div><br>




        <!--Rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
