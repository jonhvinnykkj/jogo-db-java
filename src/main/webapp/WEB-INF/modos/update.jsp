<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Editar Modo</title>
</head>
<body>
    <h1>Editar Modo de Jogo</h1>
    <form action="${pageContext.request.contextPath}/modos/update" method="post">
        <input type="hidden" name="id" value="${modo.id}" />
        <label for="nome">Modo:</label>
        <input type="text" id="nome" name="nome" value="${modo.modo}" required />
        <input type="submit" value="Atualizar" />
    </form>
    <a href="${pageContext.request.contextPath}/modos/list">Voltar</a>
</body>
</html>
