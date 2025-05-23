<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://jakarta.ee/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Gêneros</title>
</head>
<body>
<h1>Lista de Gêneros</h1>

<a href="${pageContext.request.contextPath}/generos/insert">+ Novo gênero</a>

<table border="1" cellpadding="6">
    <thead><tr><th>ID</th><th>Nome</th></tr></thead>
    <tbody>
        <c:forEach var="g" items="${generos}">
            <tr>
                <td>${g.id}</td>
                <td>${g.nome}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
