<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Novo Jogo</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Novo Jogo</h1>
            <form action="/jogos/insert" method="post">
                <div>
                    <label for="nome" class="form-label">Título:</label>
                    <input type="text" name="nome" class="form-control" />
                    <c:forEach var="a" items="${generos}">
                        <div class="form-check">
                            <input type="checkbox" name="generos" value="${a.id}" class="form-check-input" />
                            <label class="form-check-label">${a.nome}</label>
                        </div>
                    </c:forEach>
                    <c:forEach var="a" items="${plataformas}">
                        <div class="form-check">
                            <input type="checkbox" name="plataformas" value="${a.id}" class="form-check-input" />
                            <label class="form-check-label">${a.nome}</label>
                        </div>
                    </c:forEach>
                    <c:forEach var="a" items="${modos}">
                        <div class="form-check">
                            <input type="checkbox" name="modos" value="${a.id}" class="form-check-input" />
                            <label class="form-check-label">${a.modo}</label>
                        </div>
                    </c:forEach>
                </div>
                <br />
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>