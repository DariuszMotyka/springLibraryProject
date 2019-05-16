<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css"
          rel="stylesheet">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <title>Main Menu</title>
</head>
<body>
<table class="table table-dark">
    <tbody>
    <tr>
        <td><label>Authors:</label></td>
        <td>
            <a href="http://localhost:8280/authors">Go to Authors List</a>
        </td>
    </tr>

    <tr>
        <td><label>Books:</label></td>
        <td>
            <a href="http://localhost:8280/books">Go to Books List</a>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>