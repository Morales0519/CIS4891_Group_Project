<%--@elvariable id="ticketDatabase" type="java.util.Map<Integer, com.wrox.Ticket>"--%>
<template:basic htmlTitle="Inventory" bodyTitle="Inventory">
    <c:choose>
        <c:when test="${fn:length(ticketDatabase) == 0}">
            <i>There are no tickets in the system.</i>
        </c:when>
        <c:otherwise>
        <table border = "0" width = "100%" cellpadding = "12">
        <tr>
        <th align = "left">
        	View Item
        </th>
        <th align = "left">
        	Item Name
        </th>
        <th align = "left">
        	Item Price
        </th>
        <th align = "left">
        	Item Quantity
        </th>
        </tr>
            <c:forEach items="${ticketDatabase}" var="entry">
            <tr>
            <td>
                Item ${entry.key}: <a href="<c:url value="/tickets">
                    <c:param name="action" value="view" />
                    <c:param name="ticketId" value="${entry.key}" />
                </c:url>">
                <c:out value="${wrox:abbreviateString(entry.value.subject, 60)}" />
                </a>
                </td>                
                <td>
                	<c:out value="${entry.value.subject}" />
                </td>
                <td>
                $
                	<c:out value="${entry.value.price}" />
                </td>
                <td>
                	<c:out value="${entry.value.quantity}" />
                </td>                
                </tr>
            </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</template:basic>
