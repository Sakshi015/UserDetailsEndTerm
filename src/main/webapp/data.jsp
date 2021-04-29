<%--
  Created by IntelliJ IDEA.
  User: Shreee
  Date: 28-04-2021
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
    <title>Title</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="header.jsp"/><br/>
<form action="data.jsp">
    <input type="text" name="search" >
    <input type="submit" value="Search">
</form>

<sql:setDataSource
        var="db"
        driver="org.postgresql.Driver"
        url="jdbc:postgresql://localhost/userinfo"
        user="postgres"
        password="password" />

<h1>USER DETAILS</h1>
<sql:query dataSource="${db}" var="ud">
    SELECT * from details ORDER BY id;
</sql:query>
<table border="1px SOLID BLACK" class="darkTable">
    <tr><th>Name</th>
        <th>Age</th>
        <th>Email</th>
        <th>Address</th>
         <th>Number</th>
         <th>Delete</th>
         <th>Edit</th></tr>
    <c:forEach var="row" items="${ud.rows}">
        <tr>

            <td><c:out value="${row.name}" /></td>
            <td><c:out value="${row.age}" /></td>
            <td><c:out value="${row.email}" /></td>
            <td><c:out value="${row.address}" /></td>
            <td><c:out value="${row.number}" /></td>
            <td><button><a href="delete.jsp?cid=${row.id}">delete</a></button></td>
            <td><button><a href="edit.jsp?eid=${row.id}">edit</a></button></td>

        </tr>
    </c:forEach>
</table>
<h1>SEARCHED LIST</h1>
<sql:query dataSource="${db}" var="search">
    SELECT * from details  WHERE name=? ORDER BY id;
    <sql:param value="${param.search}"/>
</sql:query>
<table border="1px SOLID BLACK" class="darkTable">
    <tr><th>Name</th>
        <th>Age</th>
        <th>Email</th>
        <th>Address</th>
        <th>Number</th>
        <th>Delete</th>
        <th>Edit</th></tr>
    <c:forEach var="row" items="${search.rows}">
        <tr>

            <td><c:out value="${row.name}" /></td>
            <td><c:out value="${row.age}" /></td>
            <td><c:out value="${row.email}" /></td>
            <td><c:out value="${row.address}" /></td>
            <td><c:out value="${row.number}" /></td>
            <td><button><a href="delete.jsp?cid=${row.id}">delete</a></button></td>
            <td><button><a href="edit.jsp?eid=${row.id}">edit</a></button></td>

        </tr>
    </c:forEach>
</table>


</body>
</html>
