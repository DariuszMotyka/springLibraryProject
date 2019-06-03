<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <title>Author list</title>
</head>
<body>
<!--<form action="authorAddForm" method="post">-->
<!--   <form action="authorDelete" method="post">-->
    <table class="table table-dark">
        <tr>
            <th>
                <a href="http://localhost:8280/index.jsp">Back to Main Menu</a>
            </th>
            <td>
                <a href="/authorAddForm"><button type="submit" class="btn btn-primary" name="action" value="add">Add</button></a>
            </td>
            <td>
                <a href="/authorEditForm"><button type="submit" class="btn btn-primary" name="action" value="edit">Edit</button></a>
            </td>
            <td>
                <a href="/authorDelete"><button type="submit" class="btn btn-primary" name="action" value="delete">Delete</button></a>
            </td>
            <td>
                <button type="submit" class="btn btn-primary" name="action" value="details">Details</button>
            </td>
        </tr>

    </table>

    <table class="table table-dark">

        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">First name</th>
            <th scope="col">Last name</th>
            <th scope="col">Birth place</th>
        </tr>
        </thead>
        <tbody>
        <div class="custom-control custom-radio">
            <c:forEach var="a" items="${authorList}" varStatus="loop">
                <tr>
                    <th scope="row">${a.id}</th>
                    <td>${a.firstName}</td>
                    <td>${a.lastName}</td>
                    <td>${a.placeOfBirth}</td>
                    <td><input class="form-check-input" type="radio" name="authorId" value="${a.id}" checked></td>
                </tr>
            </c:forEach>
        </div>

        </tbody>
    </table>
<!--</form>-->
<!--</form>-->
</body>
</html>
