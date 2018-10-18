<%-- 
    Document   : new_pj
    Created on : 12/10/2018, 17:14:07
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pj"%>
<%@page import="br.com.fatecpg.web.PessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>

        <title>Novo - Pessoa Juridica</title>
    </head>
    <body id="bd">
          <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Cadastro de Pessoa Jurídica</div>

            </div>
        </div>
  
        
        
        <%try {
            if(request.getParameter("novoPJ")!=null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String tel_pj = request.getParameter("tel_pj");
                String site = request.getParameter("site");
                
                PessoaJuridica npj = new PessoaJuridica();
                npj.setPessoaJuridica(nome, razao, cnpj, tel_pj, site);
                Db_pj.getPessoaJuridicas().add(npj);
                response.sendRedirect("Pessoa_Juridica.jsp");
            }%>
<!--Forms-->
<div class="container-fluid text-center" >
                <div class="jumbotron text-center">
                    <div class="row text-center">
                        <div class="col-sm-4"></div> 
                        <div class="col-sm-4">
                            <div class="thumbnail" style="align-content: center;  
                         border-width: 10px">
                                <form class="form-horizontal">
                                    <strong> Nome: </strong><br><input style="border-radius: 4px" type="text" name="nome"/><br>
                                    <strong> Razão Social:</strong> <br><input style="border-radius: 4px" type="text" name="razao"/><br>
                                    <strong> CNPJ:</strong><br><input style="border-radius: 4px" type="text" name="cnpj"/><br>
                                    <strong> Telefone:</strong> <br><input style="border-radius: 4px" type="text" name="tel_pj"/><br>
                                    <strong> Site:</strong> <br><input style="border-radius: 4px" type="text" name="site"/><br>
                                    <br><input id="botao" type="submit" name="novoPJ" value="Incluir"/>
                                    <a id="btn3"class="button floatLeft" href="Pessoa_Juridica.jsp">Voltar</a></div><br/>
                            </div>
                        </div>
                    </div>
                </div>
        
        
        
        </form>
                                <div/>
        
               <br><br/>
            <%} catch (Exception e){%>
            
           <%}%>
       
           <!--Rodapé-->   
           <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
