<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <title>Jogos</title>
            <link href="/css/bootstrap.min.css" rel="stylesheet" />
        </head>

        <body>
            <div class="container">
                <h1>Jogos</h1>
                <a href="/jogos/insert" class="btn btn-primary">Novo Jogo</a>

                <table class="table">
                    <tr>
                        <th>ID</th>
                        <th>Título</th>
                        <th>Ações</th>
                    </tr>
                    <c:forEach var="j" items="${jogos}">
                        <tr>
                            <td>${j.id}</td>
                            <td>${j.titulo}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/jogos/update?id=${j.id}"
                                    class="btn btn-sm btn-warning">Editar</a>
                                <a href="${pageContext.request.contextPath}/jogos/delete?id=${j.id}"
                                    class="btn btn-sm btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>

        </html>