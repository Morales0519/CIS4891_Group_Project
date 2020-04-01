<%@ tag body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ attribute name="htmlTitle" type="java.lang.String" rtexprvalue="true"
              required="true" %>
<%@ attribute name="bodyTitle" type="java.lang.String" rtexprvalue="true"
              required="true" %>
<%@ attribute name="headContent" fragment="true" required="false" %>
<%@ attribute name="navigationContent" fragment="true" required="true" %>
<%@ include file="/WEB-INF/jsp/base.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>DRS Warehousing</title>
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap.min.css" />
        <link rel="stylesheet"
              href="<c:url value="/resource/stylesheet/main.css" />" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.0.0/moment.min.js"></script>
        <script type="text/javascript" lang="javascript">
            var postInvisibleForm = function(url, fields) {
                var form = $('<form id="mapForm" method="post"></form>')
                        .attr({ action: url, style: 'display: none;' });
                for(var key in fields) {
                    if(fields.hasOwnProperty(key))
                        form.append($('<input type="hidden">').attr({
                            name: key, value: fields[key]
                        }));
                }
                $('body').append(form);
                form.submit();
            };
            var newChat = function() {
                postInvisibleForm('<c:url value="/chat" />', { action: 'new' });
            };
        </script>
        <jsp:invoke fragment="headContent" />
        <style>
        a, a:link, a:visited{
        	width: 100%;
        	background-color: #990099;
        	color: white;
        	padding: 5px 10px;
        	margin: 5px 0px;
        	border: none;
        	border-radius: 5px;
        	cursor: pointer;
        }
        a:hover{
        	background-color: #800080;
        }
        body{
        	background-color: #f2f2f2;
        	
        }
        div{
        	border-radius: 5px;
        	background-color: #e6e6e6;
        	padding: 20px;
        }
        form{
        	width: 100%;
        	margin: 0 auto;
        }
        h3, h2{
        	text-align: center;
        }
        input[type=text], input[type=password]{
        	width: 100%;
        	padding: 15px 20px;
        	margin: 5px 0px;
        	display: inline-block;
        	border: 2px solid #ccc;
        	border-radius: 5px;
        	box-sizing: border-box;
        }
        input[type=submit]{
        	width: 100%;
        	background-color: #990099;
        	color: white;
        	padding: 15px 20px;
        	margin: 5px 0px;
        	border: none;
        	border-radius: 5px;
        	cursor: pointer;
        }
        input[type=submit]:hover{
        	background-color: #800080;
        }
        #bodyTable {
    		border: 0;
   			padding: 0;
    		margin: 12px 0;
    		border-collapse: collapse;
    		border-spacing: 0;
    		height: 95%;
    		width: 100%;
		}
        </style>
    </head>
    <body>
        <h1 style="text-align:center;">DRS Warehousing</h1>
        <br/>
        <table border="0" id="bodyTable">
            <tbody>
                <tr>
                    <td class="sidebarCell">
                        <jsp:invoke fragment="navigationContent" />
                    </td>
                    <td class="contentCell">
                        <h2><c:out value="${fn:trim(bodyTitle)}" /></h2>
                        <jsp:doBody />
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
