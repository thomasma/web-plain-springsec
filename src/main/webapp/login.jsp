<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page import="org.springframework.security.web.WebAttributes"%>
<%@ page import="org.springframework.security.core.AuthenticationException"%>
 <html>
 <head>
   <title>Login</title>
 </head>
 <body>
 <%
      if (session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION ) != null) {
 %>
 <font color="red"> Your login attempt was not successful, please try again.<BR>
 <br />
 Reason: <%=((AuthenticationException)session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION)).getMessage()%>
 </font>
 <%
      }
 %>
 <form method="post" id="loginForm"
      action="<c:url value='j_spring_security_check'/>">
      Username: <input type="text" name="j_username" id="j_username" /> <br />
   Password: <input type="password" name="j_password" id="j_password" /><br />
   <input type="submit" value="Login" />
 </form>
 </body>
 </html>