<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>JSP template benchmark</title>
</head>
<body>
	<table>
	<tr>
		<td>Name</td>
		<td>Age</td>
		<td>Height</td>
		<td>Weight</td>
	</tr>
	<c:forEach var="person" items="${persons}">
		<tr>
			<td><c:out value="${person.name}"/></td>
			<td><c:out value="${person.age}"/></td>
			<td><c:out value="${person.height}"/></td>
			<td><c:out value="${person.weight}"/></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>