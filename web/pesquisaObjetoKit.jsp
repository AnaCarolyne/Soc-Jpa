<%-- 
    Document   : pesquisaAluno
    Created on : 20/09/2016, 09:25:00
    Author     : Math
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <style>

            a.nounderline:link 
            { 
                text-decoration:none; 
            } 
        </style>
       <style type="text/css"> 
           table{
               width:100%;margin:0;padding:0;font-family:"Trebuchet MS",Trebuchet,Arial,sans-serif;color:#1c5d79}
           table,td,th,tr{border-collapse:collapse}
           caption{margin:0;padding:0;background:#f3f3f3;height:40px;line-height:40px;text-indent:28px;font-family:"Trebuchet MS",Trebuchet,Arial,sans-serif;font-size:14px;font-weight:700;color:#555d6d;text-align:left;letter-spacing:3px;border-top:dashed 1px #c2c2c2;border-bottom:dashed 1px #c2c2c2}
           thead{background-color:#FFF;border:none}thead tr th{height:32px;line-height:32px;text-align:center;color:#1c5d79;background-image:url(col_bg_new.gif);background-repeat:repeat-x;border-left:solid 1px #F90;border-right:solid 1px #F90;border-collapse:collapse}
           tbody tr{background:#dfedf3;font-size:13px}
           tbody tr.odd{background:azure}
           tbody tr.odd:hover,tbody tr:hover{background:#fff}
           tbody tr td,tbody tr th{padding:6px;border:1px solid #326e87}
           tbody tr th{background:#1c5d79;font-family:"Trebuchet MS",Trebuchet,Arial,sans-serif;font-size:12px;padding:6px;text-align:center;font-weight:700;color:#FFF;border-bottom:solid 1px #fff}
           tbody tr th:hover{background:#326e87}table a{color:#F60;text-decoration:none;font-size:13px;border-bottom:solid 1px #fff}
           table a:hover{color:#F90;border-bottom:none}tfoot{background:#f3f3f3;height:24px;line-height:24px;font-family:"Trebuchet MS",Trebuchet,Arial,sans-serif;font-size:14px;font-weight:700;color:#555d6d;text-align:center;letter-spacing:3px;border-top:solid 2px #326e87;border-bottom:dashed 1px #c2c2c2}
           tfoot tr th{border-top:solid 1px #326e87}tfoot tr td{text-align:right}
           </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <center>
        <title>Pesquisa de ObjetoKit</title>
    </head>
    <body>
        <h1>Pesquisa de Objeto Kit  ${operacao}</h1>
        <form action="ManterObjetoKitController?acao=prepararIncluir" method="post" name="frmManterObjetoKit" onsubmit="return validarFormulario(this)">

           <table border=1>
            <tr>
                <th>Codigo ObjetoKit</th>
                <th>Nome do ObjetoKit</th>
                 <th>Descricao</th>
                <th>Quantidade</th>
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${objetoKits}" var="objetoKit">
                <tr>
                    <td><c:out value="${objetoKit.idObjetoKit}"/></td>
                    <td><c:out value="${objetoKit.nomeObjetoKit}"/></td>
                    <td><c:out value="${objetoKit.descricao}"/></td>
                    <td><c:out value="${objetoKit.quantidade}"/></td>
                    <td><a href="ManterObjetoKitController?acao=prepararEditar&idObjetoKit=<c:out value="${objetoKit.idObjetoKit}" />">Editar </a></td>
                    <td><a href="ManterObjetoKitController?acao=prepararExcluir&idObjetoKit=<c:out value="${objetoKit.idObjetoKit}" />"> Excluir</a></td>
                </tr>      
            </c:forEach>
        </table>
         <br>
            <br>
             <tr>
              <center><input type="submit" name="bntIncluir" value="Incluir"> <a href="principal.jsp" class="nounderline"><button>Voltar</a></button></center>
              </tr>
              </br>
           </form>
            
      </center> 

    </body>
</html>
