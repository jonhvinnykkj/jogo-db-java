<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://jakarta.ee/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Modos de Jogo</title>
</head>
<body>
<h1>Lista de Modos de Jogo</h1>

<a href="${pageContext.request.contextPath}/modos/insert">+ Novo modo</a>

<table border="1" cellpadding="6">
    <thead><tr><th>ID</th><th>Modo</th></tr></thead>
    <tbody>
        <c:forEach var="m" items="${modos}">
            <tr>
                <td>${m.id}</td>
                <td>${m.modo}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
