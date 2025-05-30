<%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Plataformas</title>
            <link href="/css/bootstrap.min.css" rel="stylesheet" />
        </head>

        <body>
            <div class="container">
                <h1>Plataformas</h1>
                <a href="/plataformas/insert" class="btn btn-primary">Nova Plataforma</a>

                <table class="table">
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                    <c:forEach var="p" items="${modos}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.nome}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/plataformas/update?id=${p.id}"
                                    class="btn btn-sm btn-warning">Editar</a>
                                <a href="${pageContext.request.contextPath}/plataformas/delete?id=${p.id}"
                                    class="btn btn-sm btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>

        </html>