<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Novo Gênero</title>
</head>
<body>
<h1>Cadastrar Gênero</h1>

<form action="${pageContext.request.contextPath}/generos/insert" method="post">
    <label>Nome:
        <input type="text" name="nome" required />
    </label>
    <button type="submit">Salvar</button>
    <a href="${pageContext.request.contextPath}/generos/list">Cancelar</a>
</form>
</body>
</html>
