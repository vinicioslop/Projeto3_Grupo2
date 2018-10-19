<%-- 
    Document   : alter_pf
    Created on : 12/10/2018, 17:12:30
    Author     : valre
--%>

<%@page import="br.com.fatecpg.web.Db_pf"%>
<%@page import="br.com.fatecpg.web.PessoaFisica"%>
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
        <title>Alterar - Pessoa Física</title>
        
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%PessoaFisica npf = Db_pf.getPessoaFisicas().get(i);%>
    
    <body id="bd">
        
            <body id="bd">
               <!--Jumbotron-->
               <div class="container-fluid">
                   <div class="jumbotron text-center">
                       <div id="Text1"> Alterar Cadastro Pessoa Física</div>


                   </div>
               </div>

        <%
            if(request.getParameter("alterPF")!= null){
                npf.setNome(request.getParameter("nome"));
                npf.setCpf(request.getParameter("cpf"));
                npf.setEmail(request.getParameter("email"));
                npf.setTel_pf(request.getParameter("tel_pf"));
                Db_pf.getPessoaFisicas().set(i,npf);
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
                                    <strong style="font-size: 2rem"> Indice: <%= i%><br/></strong>
                                    <input type="hidden" name="i" value="<%=i%>"/>
                                    <strong>Nome:</strong><br/><input style="border-radius: 4px"type="text" name="nome" value="<%=npf.getNome()%>"/><br/>
                                    <strong>Nome:</strong><br/><input style="border-radius: 4px"type="text" name="cpf" value="<%=npf.getCpf()%>"/><br/>
                                    <strong>Email:</strong><br/><input style="border-radius: 4px"type="text" name="email" value="<%=npf.getEmail()%>"/><br/>
                                    <strong>Telefone:</strong><br/><input style="border-radius: 4px"type="text" name="tel_pf" value="<%=npf.getTel_pf()%>"/><br/>
                                    <br/><input id="botao" type="submit" name="alterPF" value="Alterar"/>
                                    <a id="btn3"class="button floatLeft" href="Pessoa_Fisica.jsp">Voltar</a></div><br/>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
            
        
        </form>
                                    <br/>
            <!--Rodapé-->   
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>