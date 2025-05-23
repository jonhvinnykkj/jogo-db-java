<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Novo Modo</title>
</head>
<body>
<h1>Cadastrar Modo de Jogo</h1>

<form action="${pageContext.request.contextPath}/modos/insert" method="post">
    <label>Modo:
        <input type="text" name="modo" required />
    </label>
    <button type="submit">Salvar</button>
    <a href="${pageContext.request.contextPath}/modos/list">Cancelar</a>
</form>
</body>
</html>
