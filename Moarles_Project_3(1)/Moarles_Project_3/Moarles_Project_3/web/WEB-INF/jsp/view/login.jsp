<%--@elvariable id="loginFailed" type="java.lang.Boolean"--%>
<template:loggedOut htmlTitle="Log In" bodyTitle="Log In">
 <!--   <h2>Welcome to Berry's Berry Good Bed and Breakfast! Please login to continue.</h2> -->
    <c:if test="${loginFailed}">
        <h3>The username and password you entered are not correct. Please try
            again.</h3><br /><br />
    </c:if>
    <form method="POST" action="<c:url value="/login" />">
        Username<br />
        <input type="text" name="username" /><br /><br />
        Password<br />
        <input type="password" name="password" /><br /><br />
        <input type="submit" value="Log In" />
    </form>
</template:loggedOut>

