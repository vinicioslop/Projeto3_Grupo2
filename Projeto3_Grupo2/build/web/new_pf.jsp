<%-- 
    Document   : new_pf
    Created on : 12/10/2018, 17:13:56
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Novo - Contatos</title>
        <!--Cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <!--Navbar-->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body id="bd">
                <!--Jumbotron-->
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <div id="Text1"> Cadastro de Pessoa Física</div>

            </div>
        </div>

        
        <%try {
            if(request.getParameter("novoPF")!=null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String tel_pf = request.getParameter("tel_pf");
                String email = request.getParameter("email");
                
                PessoaFisica npf = new PessoaFisica();
                npf.setPessoaFisica(nome, cpf, tel_pf, email);
                Db_pf.getPessoaFisicas().add(npf);
                response.sendRedirect("Pessoa_Fisica.jsp");
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
                                    <strong> Nome: <br><input style="border-radius: 4px" type="text" name="nome"/></strong></br>
                                    <strong/>CPF:<br><input style="border-radius: 4px" type="text" name="cpf"/><br>
                                    <strong/>Telefone: <br><input style="border-radius: 4px" type="text" name="tel_pf"/><br>
                                    <strong/>E-mail: <br><input style="border-radius: 4px" type="text" name="email"/><br>
                                    <br><input id="botao" type="submit" name="novoPF" value="Incluir"/>
                                    <a id="btn3"class="button floatLeft" href="Pessoa_Fisica.jsp">Voltar</a></div><br/>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>

            
        </form>
               
            <%} catch (Exception e){%>
            
           <%}%>
           
            </div>
            </div><br>
           
           
        <!--Rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
