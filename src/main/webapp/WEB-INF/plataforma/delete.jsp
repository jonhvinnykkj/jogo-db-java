<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Excluir Plataforma</title>
</head>
<body>
    <h1>Confirmar Exclusão</h1>
    <p>Tem certeza que deseja excluir a plataforma: <strong>${plataforma.nome}</strong>?</p>
    <form action="${pageContext.request.contextPath}/plataformas/delete" method="post">
        <input type="hidden" name="id" value="${plataforma.id}" />
        <input type="submit" value="Confirmar Exclusao" />
    </form>
    <a href="${pageContext.request.contextPath}/plataformas/list">Cancelar</a>
</body>
</html>
