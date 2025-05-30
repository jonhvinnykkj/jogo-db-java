<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Excluir Jogo</title>
</head>
<body>
    <h1>Confirmar Exclusão</h1>
    <p>Tem certeza que deseja excluir o jogo: <strong>${jogo.titulo}</strong>?</p>
    <form action="${pageContext.request.contextPath}/jogos/delete" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />
        <input type="submit" value="Confirmar Exclusao" />
    </form>
    <a href="${pageContext.request.contextPath}/jogos/list">Cancelar</a>
</body>
</html>
