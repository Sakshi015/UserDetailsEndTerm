<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="header.jsp"/><br/>


<div class="login-box">
    <h1 style="color: white">Register Details</h1>
<form action="index.jsp" method="post">
    <div class="user-box">
     <input type="text" name="name"><br>
     <label>Name</label>
    </div>
    <div class="user-box">
    <input type="text" name="age"><br>
    <label>Age</label>
    </div>
    <div class="user-box">
    <input type="email" name="email"><br>
    <label>EmailId</label>
    </div>

    <div class="user-box">
    <input type="text" name="address"><br>
    <label>Address</label>
    </div>
     <div class="user-box">
    <input type="text" name="phno"><br>
     <label>PhoneNumber</label>
      </div>
    <input type="submit" value="submit"><br>
</form>
</div>

<sql:setDataSource
        var="db"
        driver="org.postgresql.Driver"
        url="jdbc:postgresql://localhost/userinfo"
        user="postgres"
        password="password" />


<c:choose>
    <c:when test="${not empty param.name && not empty param.age && not empty param.email && not empty param.address && not empty param.phno }">
        <sql:update dataSource="${db}" var="count" >
            insert into details(name,age,email,address,number) Values(?,?,?,?,?);
            <sql:param value="${param.name}"/>
            <sql:param value="${param.age}"/>
            <sql:param value="${param.email}"/>
            <sql:param value="${param.address}"/>
            <sql:param value="${param.phno}"/>
        </sql:update>
        <jsp:forward page="data.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>
</body>
</html>