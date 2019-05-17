<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <title>Author list</title>
</head>
<body>
<form action="authorAddForm" method="post">
    <table class="table table-dark">
        <tr>
            <th>
                <a href="http://localhost:8280/index.jsp">Back to Main Menu</a>
            </th>
            <td>
                <button type="submit" class="btn btn-primary" name="action" value="add">Add</button>
            </td>
            <td>
                <button type="submit" class="btn btn-primary" name="action" value="edit">Edit</button>
            </td>
            <td>
                <button type="submit" class="btn btn-primary" name="action" value="delete">Delete</button>
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

                    <td>
                        <div class="action-group-checkbox">
                            <input type="radio" name="bookId" value="${a.id}" checked>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </div>

        </tbody>
    </table>
</form>

</body>
</html>
