<%@ page laguage="java" contentType="text/html; charset=UTF-8 %">
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary">Nova Jogo</a>
        <table class="table">
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th>Plataformas</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${jogos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria.nome}</td>
                    <td>
                        <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                            ${s.getCount() > 1 ? ", " : ""}
                            ${p.nome}
                        </c:forEach>
                    </td>
                    <td>
                        <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                        <a href="/jogo/delete?id=${item.id}" class="btn btn-warning">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>