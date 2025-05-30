<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Editar Jogo</title>
</head>
<body>
    <h1>Editar Jogo</h1>
    <form action="${pageContext.request.contextPath}/jogos/update" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />
        <label for="nome">Título:</label>
        <input type="text" id="nome" name="nome" value="${jogo.titulo}" required />
        <input type="submit" value="Atualizar" />
    </form>
    <a href="${pageContext.request.contextPath}/jogos/list">Voltar</a>
</body>
</html>
