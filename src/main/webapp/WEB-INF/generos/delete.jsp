<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Excluir Gênero</title>
</head>
<body>
    <h1>Confirmar Exclusão</h1>

    <p>Tem certeza que deseja excluir o gênero: <strong>${genero.nome}</strong>?</p>

    <form action="${pageContext.request.contextPath}/generos/delete" method="post">
        <input type="hidden" name="id" value="${genero.id}" />
        <input type="submit" value="Confirmar Exclusao" />
    </form>

    <a href="${pageContext.request.contextPath}/generos/list">Cancelar</a>
</body>
</html>
