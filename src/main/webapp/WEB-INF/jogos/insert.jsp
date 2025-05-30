<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Novo Jogo</title>
</head>
<body>
<h1>Cadastrar Jogo</h1>

<form action="${pageContext.request.contextPath}/jogos/save" method="post">
    <input type="hidden" name="id" value="${jogo.id}" />
    
    <label>Nome:
        <input type="text" name="nome" value="${jogo.nome}" required />
    </label>
    <br/>
    <label>Descrição:
        <input type="text" name="descricao" value="${jogo.descricao}" required />
    </label>
    <br/>
    <label>Data de Lançamento:
        <input type="date" name="dataLancamento" value="${jogo.dataLancamento}" />
    </label>
    <br/>
    <button type="submit">Salvar</button>
    <a href="${pageContext.request.contextPath}/jogos/list">Cancelar</a>
</form>
</body>
</html>
