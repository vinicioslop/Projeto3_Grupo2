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
        <title>Remover - Veículo</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <% Veiculo v = Db_v.getVeiculos().get(i);%>
    
    <body>
        <h2>Remover</h2>
        <%
            if(request.getParameter("removerV")!=null){
               
                Db_v.getVeiculos().remove(i);
                response.sendRedirect("Veiculo.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Placa:<%=v.getPlaca()%><br/>
            Marca:<%=v.getMarca()%><br/>
            Modelo:<%=v.getModelo()%><br/>
            Cor:<%=v.getCor()%><br/>
            
            <br/><input type="submit" name="removerV" value="Remover"/>
        </form>
    </body>
</html>
