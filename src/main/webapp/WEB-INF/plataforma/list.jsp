<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://jakarta.ee/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Plataformas</title>
</head>
<body>
<h1>Lista de Plataformas</h1>

<a href="${pageContext.request.contextPath}/plataformas/insert">+ Nova plataforma</a>

<table border="1" cellpadding="6">
    <thead><tr><th>ID</th><th>Nome</th></tr></thead>
    <tbody>
        <!-- ⚠️  O controller hoje injeta o atributo como "modos"; ajuste lá para "plataformas" se quiser. -->
        <c:forEach var="p" items="${modos}">
            <tr>
                <td>${p.id}</td>
                <td>${p.nome}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
