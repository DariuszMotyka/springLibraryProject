<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <title>Add Author</title>
</head>
<body style="background-color: darkgrey">
<div class="container mt-5">
    <form name="form" action="saveAuthor" modelAttribute="authorAttribute" method="post" onsubmit="return validate()">
        <table class="table table-dark" align="center">
            <tr>
                <td>First name</td>
                <td><input type="text" class="form-control" name="firstName"/></td>
            </tr>

            <tr>
                <td>Last name</td>
                <td><input type="text" class="form-control" name="lastName"/></td>
            </tr>
            <tr>
                <td>Birth place</td>
                <td><input type="text" class="form-control" name="placeOfBirth"/></td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <button type="submit" value="add" class="btn btn-primary">Add</button>
                </td>
            </tr>
        </table>
    </form>
    <center>
        <a href="/BooksServlet"><button type="reset" class="btn btn-primary">Cancel</button></a>
    </center>
</div>
</body>
</html>
