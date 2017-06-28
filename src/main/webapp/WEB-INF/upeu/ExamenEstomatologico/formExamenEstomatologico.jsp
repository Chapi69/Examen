<%-- 
    Document   : formPeriodo
    Created on : 23-jun-2015, 10:23:00
    Author     : SistemasUpeu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>        
    </head>
    <body>
        <div>
            <c:url var="savedientex"  value="guardarExamenEstomatologico" />
            <fm:form modelAttribute="modeloExamenEstomatologico" method="post" action="${savedientex}">
                <table>
                    <tr>
                        <td><fm:label path="idAnalisis">idAnalisis</fm:label> </td>
                        <td><fm:input path="idAnalisis"size="80" /></td>
                    </tr>
                    <tr>
                        <td><fm:label path="idPaciente"> idPaciente</fm:label> </td>
                        <td><fm:input path="idPaciente" size="60" /></td>
                    </tr>
                    
                    <tr>
                        <td><fm:label path="notivo_consulta">notivo_consulta</fm:label> </td>                        
                        <td><fm:input path="notivo_consulta" size="60" /></td>
                    </tr> 
                    <tr>
                        <td><fm:label path="riesgo">riesgo</fm:label> </td>                        
                        <td><fm:input path="riesgo" size="60" /></td>
                    </tr>
                    <tr>
                        <td><fm:label path="estado">estado</fm:label> </td>                        
                        <td><fm:input path="estado" size="60" /></td>
                    </tr>
                    <tr>
                        <td><fm:label path="fecha">fecha</fm:label> </td>                        
                        <td><fm:input path="fecha" size="60" /></td>
                    </tr>
                    
                    <tr>                        
                        <td colspan="2"><input type="submit" value="Enviar" > </td>
                    </tr>
                </table>                
            </fm:form>         
        </div>
    </body>
</html>
