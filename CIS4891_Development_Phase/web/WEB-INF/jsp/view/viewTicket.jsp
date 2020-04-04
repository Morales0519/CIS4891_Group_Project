<%--@elvariable id="ticketId" type="java.lang.String"--%>
<%--@elvariable id="ticket" type="com.wrox.Ticket"--%>
<template:basic htmlTitle="${ticket.subject}"
                bodyTitle="Here's what we got">
    <b>Item Name: </b> <c:out value="${ticket.subject}" /><br /><br />
    <b>Item Description: </b> <c:out value="${ticket.description}" /><br /><br />
    <b>Price: $</b> <c:out value="${ticket.price}" /><br /><br />
    <b>Quantity: </b> <c:out value="${ticket.quantity}" /><br /><br />
    
    <c:out value="${ticket.body}" /><br /><br />
    <c:if test="${ticket.numberOfAttachments > 0}">
        Attachments:
        <c:forEach items="${ticket.attachments}" var="attachment"
                   varStatus="status">
            <c:if test="${!status.first}">, </c:if>
            <img src="/support/tickets/${attachment.contents}"/>
            <a href="<c:url value="/tickets">
                    <c:param name="action" value="download" />
                    <c:param name="ticketId" value="${ticketId}" />
                    <c:param name="attachment" value="${attachment.name}" />
                </c:url>"><c:out value="${attachment.name}" /></a>
        </c:forEach><br /><br />
    </c:if>
</template:basic>
