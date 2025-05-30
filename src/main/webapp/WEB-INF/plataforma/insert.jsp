<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Nova Plataforma</title>
</head>
<body>
<h1>Cadastrar Plataforma</h1>

<form action="${pageContext.request.contextPath}/plataformas/insert" method="post">
    <label>Nome:
        <input type="text" name="nome" required />
    </label>
    <button type="submit">Salvar</button>
    <a href="${pageContext.request.contextPath}/plataformas/list">Cancelar</a>
</form>
</body>
</html>
