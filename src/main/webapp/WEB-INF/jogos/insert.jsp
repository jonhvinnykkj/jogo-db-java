<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Novo Jogo</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <h1>Novo Jogo</h1>
    <form action="${pageContext.request.contextPath}/jogos/insert" method="post">

        <!-- Título -->
        <div class="mb-3">
            <label for="titulo" class="form-label">Titulo:</label>
            <input type="text" class="form-control" id="titulo" name="titulo" required>
        </div>

        <!-- Modo de Jogo -->
        <div class="mb-3">
            <label for="modo" class="form-label">Modo de Jogo:</label>
            <select class="form-select" id="modo" name="modoId" required>
                <option value="">Selecione...</option>
                <c:forEach var="m" items="${modos}">
                    <option value="${m.id}">${m.modo}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Gêneros -->
        <div class="mb-3">
            <label class="form-label">Generos:</label><br>
            <c:forEach var="g" items="${generos}">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="generoIds" value="${g.id}" id="genero_${g.id}">
                    <label class="form-check-label" for="genero_${g.id}">${g.nome}</label>
                </div>
            </c:forEach>
        </div>

        <!-- Plataformas -->
        <div class="mb-3">
            <label class="form-label">Plataformas:</label><br>
            <c:forEach var="p" items="${plataformas}">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="plataformaIds" value="${p.id}" id="plataforma_${p.id}">
                    <label class="form-check-label" for="plataforma_${p.id}">${p.nome}</label>
                </div>
            </c:forEach>
        </div>

        <button type="submit" class="btn btn-success">Salvar</button>
    </form>
</div>
</body>
</html>
