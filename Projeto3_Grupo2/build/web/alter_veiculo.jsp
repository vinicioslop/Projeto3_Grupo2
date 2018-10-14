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
        <title>Alterar - Veículo</title>
    </head>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Veiculo v = Db_v.getVeiculos().get(i);%>
    
    <body>
        <h2>Alterar</h2>
        <%
            if(request.getParameter("alterV")!=null){
                v.setPlaca(request.getParameter("placa"));
                v.setMarca(request.getParameter("marca"));
                v.setModelo(request.getParameter("modelo"));
                v.setCor(request.getParameter("cor"));
                Db_v.getVeiculos().set(i,v);
                response.sendRedirect("Veiculo.jsp");
            }
        %>
        <form>
            Indice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Placa:<br/><input type="text" name="placa" value="<%=v.getPlaca()%>"/><br/>
            Marca:<br/><input type="text" name="marca" value="<%=v.getMarca()%>"/><br/>
            Modelo:<br/><input type="text" name="modelo" value="<%=v.getModelo()%>"/><br/>
            Cor:<br/><input type="text" name="cor" value="<%=v.getCor()%>"/><br/>
            <br/><input type="submit" name="alterV" value="Alterar"/>
        </form>
    </body>
</html>

