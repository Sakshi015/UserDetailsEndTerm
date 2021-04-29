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
<sql:setDataSource
        var="db"
        driver="org.postgresql.Driver"
        url="jdbc:postgresql://localhost/userinfo"
        user="postgres"
        password="password" />

<sql:update var="rs" dataSource="${db}"  >
    delete from details where id=? ;
    <sql:param value="${Integer.parseInt(param.cid)}"/>
</sql:update>
<jsp:forward page="data.jsp"></jsp:forward>

</body>
</html>
