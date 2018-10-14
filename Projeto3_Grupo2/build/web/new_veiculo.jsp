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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro Veiculo</h1>
        
        
        <%try {
            
            if (request.getParameter("novoV")!=null) {
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor = request.getParameter("cor");
            
                Veiculo v = new Veiculo();
                v.setVeiculo(placa, marca, modelo, cor);
                Db_v.getVeiculos().add(v);
                response.sendRedirect("home.jsp");
                
            }%>
                
        <form>
            Placa: <br><input type="text" name="placa"/><br>
            Marca: <br><input type="text" name="marca"/><br>
            Modelo:<br><input type="text" name="modelo"/><br>
            Cor: <br><input type="text" name="cor"/><br>
            <br><input type="submit" name="novoV" value="Incluir"/>
        </form>
        
        <%} catch (Exception e) {%>
            
           <%}%>
        
        
    </body>
</html>
