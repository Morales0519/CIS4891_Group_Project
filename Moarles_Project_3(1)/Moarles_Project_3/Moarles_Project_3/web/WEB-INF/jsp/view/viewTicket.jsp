<%--@elvariable id="ticketId" type="java.lang.String"--%>
<%--@elvariable id="ticket" type="com.wrox.Ticket"--%>
<template:basic htmlTitle="${ticket.subject}"
                bodyTitle="Here's what we got">
    <b>Reservation Name</b> <c:out value="${ticket.reservationName}" /><br /><br />
    <b>Address:</b> <c:out value="${ticket.address}" /><br /><br />
    <b>Arrival Date:</b> <c:out value="${ticket.arrivalDate}" /><br /><br />
    <b>Departure Date:</b> <c:out value="${ticket.departureDate}" /><br /><br />
    
    <c:out value="${ticket.body}" /><br /><br />
    <c:if test="${ticket.numberOfAttachments > 0}">
        Attachments:
        <c:forEach items="${ticket.attachments}" var="attachment"
                   varStatus="status">
            <c:if test="${!status.first}">, </c:if>
            <a href="<c:url value="/tickets">
                    <c:param name="action" value="download" />
                    <c:param name="ticketId" value="${ticketId}" />
                    <c:param name="attachment" value="${attachment.name}" />
                </c:url>"><c:out value="${attachment.name}" /></a>
        </c:forEach><br /><br />
    </c:if>
</template:basic>
