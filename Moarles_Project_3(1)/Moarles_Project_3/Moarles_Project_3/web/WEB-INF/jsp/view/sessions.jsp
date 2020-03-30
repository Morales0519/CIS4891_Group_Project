<%--@elvariable id="timestamp" type="long"--%>
<%--@elvariable id="numberOfSessions" type="int"--%>
<%--@elvariable id="sessionList" type="java.util.List<javax.servlet.http.HttpSession>"--%>
<template:basic htmlTitle="Active Sessions" bodyTitle="Active Sessions">
    There are ${numberOfSessions} active users on our site!<br /><br />
    <c:forEach items="${sessionList}" var="s">
        <c:out value="${s.getAttribute('username')}" />
        <c:if test="${s.id == pageContext.session.id}">&nbsp;(you)</c:if>
        &nbsp;- last active
        ${wrox:timeIntervalToString(timestamp - s.lastAccessedTime)} ago<br />
    </c:forEach>
</template:basic>
