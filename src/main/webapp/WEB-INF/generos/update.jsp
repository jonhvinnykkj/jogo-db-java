<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Editar Gênero</title>
</head>
<body>
    <h1>Editar Gênero</h1>
    
    <form action="${pageContext.request.contextPath}/generos/update" method="post">
        <input type="hidden" name="id" value="${genero.id}" />

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${genero.nome}" required />

        <input type="submit" value="Atualizar" />
    </form>

    <a href="${pageContext.request.contextPath}/generos/list">Voltar</a>
</body>
</html>
