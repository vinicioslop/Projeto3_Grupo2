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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo - Contatos</title>
    </head>
    <body>
<<<<<<< HEAD
        <h1>Cadastro de Contatos</h1>
        <h2>Novo</h2>
        <% 
            if(request.getParameter("newPF")!= null){
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                PessoaFisica c = new PessoaFisica();
                c.setDados(nome, email, telefone);
                Db_pf.getContatos().add(c);
                response.sendRedirect("home.jsp");
            
            }
        %> 
        <form>
            Nome:<br/><input type="text" name="nome"/><br/>
            Telefone:<br/><input type="text" name="telefone"/><br/>
            Email:<br/><input type="text" name="email"/><br/>
            <br/><input type="submit" name="newPF" value="Incluir"/>
        </form>
=======
        <h1>Cadastro Pessoa Fisica</h1>
        
        <%try {
            if(request.getParameter("novoPF")!=null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String tel_pf = request.getParameter("tel_pf");
                String email = request.getParameter("email");
                
                PessoaFisica npf = new PessoaFisica();
                npf.setPessoaFisica(nome, cpf, tel_pf, email);
                Db_pf.getPessoaFisicas().add(npf);
                response.sendRedirect("home.jsp");
            }
            %>
            
        <form>
            Nome: <br><input type="text" name="nome"/><br>
            CPF:<br><input type="text" name="cpf"/><br>
            Telefone: <br><input type="text" name="tel_pf"/><br>
            E-mail: <br><input type="text" name="email"/><br>
            <br><input type="submit" name="veiculo" value="Incluir"/>
        </form>
               
            <%} catch (Exception e){%>
            
           <%}%>
        
>>>>>>> f6a076bf31b308190efbc76d6dc64a87649e1275
    </body>
</html>
