<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Plataformas</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Plataformas</h1>
            <a href="/plataformas/insert" class="btn btn-primary">Nova Plataforma</a>
            <table class="table">
                <tr>
                    <th>id</th>
                    <th>nome</th>
                </tr>
                <c:forEach var="g" items="${plataformas}">
                    <tr>
                        <td>${g.id}</td>
                        <td>${g.nome}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>