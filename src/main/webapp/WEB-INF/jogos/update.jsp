<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Editar Jogo</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Editar Jogo</h1>
            <form action="/jogos/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <div>
                    <label class="form-label">Título</label>
                    <input type="text" class="form-control" name="titulo" value="${jogo.titulo}" />
                </div>
                <div>
                    <label class="form-label">Jogo</label>
                    <select class="form-select" name="id_genero">
                        <c:forEach var="g" items="${jogos}">
                            <option ${livro.genero.id == g.id ? "selected" : ""} value="${g.id}">${g.titulo}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label class="form-label">Gênero</label>
                    <c:forEach var="a" items="${generos}">
                        <div class="form-check">
                            <input ${livro.autores.contains(a) ? "checked" : ""} type="checkbox" name="generos" value="${a.id}" class="form-check-input" />
                            <label class="form-check-label">${a.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>