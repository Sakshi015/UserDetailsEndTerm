<%--
  Created by IntelliJ IDEA.
  User: Shreee
  Date: 28-04-2021
  Time: 16:53
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
<c:set var="edit" value="${param.eid}" scope="session"/>


<h1>Edit Form</h1>
<div>
    <form action="next.jsp" >
        Name:
        <input type="text" name="ename"><br>
        Age:
        <input type="text" name="eage"><br>
        EmailId:
        <input type="email" name="eemail"><br>
        Address:
        <input type="text" name="eaddress"><br>
        Phone no:
        <input type="text" name="ephno"><br>
        <input type="submit" value="Save"><br>
    </form>

</div>
<br/>


<%--<sql:setDataSource--%>
<%--        var="db"--%>
<%--        driver="org.postgresql.Driver"--%>
<%--        url="jdbc:postgresql://localhost/userinfo"--%>
<%--        user="postgres"--%>
<%--        password="password" />--%>


<%--<c:choose>--%>
<%--<c:when test="${not empty param.ename && not empty param.eage && not empty param.eemail && not empty param.eaddress && not empty param.ephno }">--%>
<%--    <sql:update dataSource="${db}" var="database" >--%>
<%--   UPDATE  details SET name=?,age=?,email=?,address=?,number=? WHERE id=?;--%>
<%--    <sql:param value="${param.ename}"/>--%>
<%--    <sql:param value="${param.eage}"/>--%>
<%--    <sql:param value="${param.eemail}"/>--%>
<%--    <sql:param value="${param.eaddress}"/>--%>
<%--    <sql:param value="${param.ephno}"/>--%>
<%--    <sql:param value="${param.eid}"/>--%>
<%--    </sql:update>--%>

<%--</c:when>--%>
<%--<c:otherwise>--%>

<%--</c:otherwise>--%>
<%--</c:choose>--%>

</body>
</html>
