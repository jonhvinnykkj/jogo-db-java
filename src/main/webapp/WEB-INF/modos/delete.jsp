<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Excluir Modo</title>
</head>
<body>
    <h1>Confirmar Exclusão</h1>
    <p>Tem certeza que deseja excluir o modo de jogo: <strong>${modo.modo}</strong>?</p>
    <form action="${pageContext.request.contextPath}/modos/delete" method="post">
        <input type="hidden" name="id" value="${modo.id}" />
        <input type="submit" value="Confirmar Exclusao" />
    </form>
    <a href="${pageContext.request.contextPath}/modos/list">Cancelar</a>
</body>
</html>
