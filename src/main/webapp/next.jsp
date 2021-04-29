<%--
  Created by IntelliJ IDEA.
  User: Shreee
  Date: 28-04-2021
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource
        var="db"
        driver="org.postgresql.Driver"
        url="postgres://iyboormxbvcbzl:ce90a26a1b2a529dfc1ba7067092d8e83d18bab5c10913bcf5ce6090a199dc19@ec2-52-87-107-83.compute-1.amazonaws.com:5432/d10fott6o6lkl"
        user="iyboormxbvcbzl"
        password="ce90a26a1b2a529dfc1ba7067092d8e83d18bab5c10913bcf5ce6090a199dc19" />

<%--<c:out value="${param.ename}"/>--%>
<%--<c:out value="${param.eage}"/>--%>
<%--<c:out value="${param.eemail}"/>--%>
<%--<c:out value="${param.eaddress}"/>--%>
<%--<c:out value="${param.ephno}"/>--%>
<%--<c:out value="${sessionScope.edit}"/>--%>

<c:choose>
    <c:when test="${not empty param.ename && not empty param.eage && not empty param.eemail && not empty param.eaddress && not empty param.ephno }">
        <sql:update dataSource="${db}" var="database" >
            UPDATE  details SET name=?,age=?,email=?,address=?,number=? WHERE id=?;
            <sql:param value="${param.ename}"/>
            <sql:param value="${param.eage}"/>
            <sql:param value="${param.eemail}"/>
            <sql:param value="${param.eaddress}"/>
            <sql:param value="${param.ephno}"/>
            <sql:param value="${Integer.parseInt(sessionScope.edit)}"/>
        </sql:update>
<jsp:forward page="data.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>

</body>
</html>
