<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>Home</title>
</head>
<body>
	You are logged in.
	<br />
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<p style="font-weight: bold">This text is only visible to admin
			users.</p>
	</sec:authorize>
	<br />
	<hr />
	<a href='<c:url value="j_spring_security_logout"/>'>Logout</a>&nbsp;|&nbsp;
	<a href='<c:url value="admin/admin.jsp"/>'>Admin</a>
	<br />
</body>
</html>