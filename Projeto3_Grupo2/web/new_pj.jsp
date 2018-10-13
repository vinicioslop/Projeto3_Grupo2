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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro Pessoa Juridica</h1>
        <h1>Hello World!</h1>
        
        
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
                response.sendRedirect("home.jsp");
            }%>
            
        <form>
            Nome: <br><input type="text" name="nome"/><br>
            Razão Social: <br><input type="text" name="razao"/><br>
            CNPJ:<br><input type="text" name="cnpj"/><br>
            Telefone: <br><input type="text" name="tel_pj"/><br>
            Site: <br><input type="text" name="site"/><br>
            <br><input type="submit" name="veiculo" value="Incluir"/>
        </form>
        
               
            <%} catch (Exception e){%>
            
           <%}%>
        
    </body>
</html>
