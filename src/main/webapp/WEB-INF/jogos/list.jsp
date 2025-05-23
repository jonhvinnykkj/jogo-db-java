<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://jakarta.ee/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Jogos</title>
</head>
<body>
<h1>Lista de Jogos</h1>

<a href="${pageContext.request.contextPath}/jogos/insert">+ Novo Jogo</a>

<table border="1" cellpadding="6">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Data de Lançamento</th>
            <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="j" items="${jogos}">
            <tr>
                <td>${j.id}</td>
                <td>${j.nome}</td>
                <td>${j.descricao}</td>
                <td>${j.dataLancamento}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/jogos/${j.id}/edit">Editar</a> |
                    <a href="${pageContext.request.contextPath}/jogos/${j.id}/delete"
                       onclick="return confirm('Confirma exclusão?');">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
