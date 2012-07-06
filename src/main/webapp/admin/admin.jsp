<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>Home</title>
</head>
<body>
	You are authorized to view this page since you have admin rights.
	<br />
	<br />
	<hr />
	<a href='<c:url value="/j_spring_security_logout"/>'>Logout</a>&nbsp;|&nbsp;
	<a href='<c:url value="/index.jsp"/>'>Home</a>
	<br />

</body>
</html>