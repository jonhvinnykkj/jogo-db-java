<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modos de Jogo</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <h1>Modos de Jogo</h1>
    <a href="/modos/insert" class="btn btn-primary">Novo Modo</a>

    <table class="table">
        <tr>
            <th>ID</th>
            <th>Modo</th>
            <th>Ações</th>
        </tr>
        <c:forEach var="m" items="${modos}">
            <tr>
                <td>${m.id}</td>
                <td>${m.modo}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/modos/update?id=${m.id}" class="btn btn-sm btn-warning">Editar</a>
                    <a href="${pageContext.request.contextPath}/modos/delete?id=${m.id}" class="btn btn-sm btn-danger">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
