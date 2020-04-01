<%@ tag body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ attribute name="htmlTitle" type="java.lang.String" rtexprvalue="true"
              required="true" %>
<%@ attribute name="bodyTitle" type="java.lang.String" rtexprvalue="true"
              required="true" %>
<%@ attribute name="extraHeadContent" fragment="true" required="false" %>
<%@ attribute name="extraNavigationContent" fragment="true" required="false" %>
<%@ include file="/WEB-INF/jsp/base.jspf" %>
<%--@elvariable id="ticket" type="com.wrox.Ticket"--%>
<template:main htmlTitle="${htmlTitle}" bodyTitle="${bodyTitle}">
    <jsp:attribute name="headContent">
        <jsp:invoke fragment="extraHeadContent" />
    </jsp:attribute>
    
    <jsp:attribute name="navigationContent">
        <a href="<c:url value="/tickets">
            <c:param name="action" value="create" />
        </c:url>">Add Item</a><br /><br />
        <a href="<c:url value="/tickets">
            <c:param name="action" value="list" />
        </c:url>">View Inventory</a><br /><br />
        
        <!--
        <a href="javascript:void 0;"
           onclick="newChat();">Chat with Support</a><br /><br /> -->
           
         <c:if test="${username == 'Admin'}"> 
	        <a href="<c:url value="/chat">
	            <c:param name="action" value="list" />
	        </c:url>">View Chat Requests</a><br /><br />
        </c:if>
        
        <!-- <a href="<c:url value="/sessions" />">List Sessions</a><br /><br />  -->
        <a href="<c:url value="/login?logout" />">Log Out</a><br /><br />
        
        
        
        <jsp:invoke fragment="extraNavigationContent" />
    </jsp:attribute>
    
    <jsp:body>
        <jsp:doBody />
    </jsp:body>
</template:main>
