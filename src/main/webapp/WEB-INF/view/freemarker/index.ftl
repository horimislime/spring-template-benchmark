<html>
<head>
	<title>Freemarker template benchmark</title>
</head>
<body>
	<#if persons?has_content>
	
	<table>
	<tr>
		<td>Name</td>
		<td>Age</td>
		<td>Height</td>
		<td>Weight</td>
	</tr>
	<#list persons as person>
		<tr>
			<td>${person.name}</td>
			<td>${person.age}</td>
			<td>${person.height}</td>
			<td>${person.weight}</td>
		</tr>
	</#list>
	</table>
	</#if>
</body>
</html>