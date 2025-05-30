<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <title>Gêneros</title>
            <link href="/css/bootstrap.min.css" rel="stylesheet" />
        </head>

        <body>
            <div class="container">
                <h1>Gêneros</h1>
                <a href="/generos/insert" class="btn btn-primary">Novo Gênero</a>
                <a href="${pageContext.request.contextPath}/generos/update?id=${g.id}">Editar</a>
                <a href="${pageContext.request.contextPath}/generos/delete?id=${g.id}">Excluir</a>

                <table class="table">
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ações</th> <!-- nova coluna -->
                    </tr>
                    <c:forEach var="g" items="${generos}">
                        <tr>
                            <td>${g.id}</td>
                            <td>${g.nome}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/generos/update?id=${g.id}"
                                    class="btn btn-sm btn-warning">Editar</a>
                                <a href="${pageContext.request.contextPath}/generos/delete?id=${g.id}"
                                    class="btn btn-sm btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>

            </div>
        </body>

        </html>