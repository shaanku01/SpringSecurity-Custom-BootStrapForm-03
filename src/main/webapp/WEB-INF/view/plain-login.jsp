<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Zemoso Login Form</title>
    <style>
        .failed{
        color:red;
        }
    </style>
</head>
<body>
    <h3> My Custom Login PAge </h3>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

        <!-- check for error message-->
        <c:if test="${param.error != null}">
            <i class="failed"> Sorry You have entered an invalid username/password. </i>
        </c:if>

        <p>
            User Name: <input type="text" name="username"/>
        </p>

        <p>
            Password: <input type="password" name="password"/>
        </p>

        <input type="submit" value="Login"/>
    </form:form>
</body>
</html>