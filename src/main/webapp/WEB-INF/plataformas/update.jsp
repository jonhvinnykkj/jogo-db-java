<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Editar Plataforma</title>
</head>
<body>
    <h1>Editar Plataforma</h1>
    <form action="${pageContext.request.contextPath}/plataformas/update" method="post">
        <input type="hidden" name="id" value="${plataforma.id}" />
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${plataforma.nome}" required />
        <input type="submit" value="Atualizar" />
    </form>
    <a href="${pageContext.request.contextPath}/plataformas/list">Voltar</a>
</body>
</html>
