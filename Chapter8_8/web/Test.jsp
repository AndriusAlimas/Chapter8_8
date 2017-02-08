<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
	<!--  you can use either [] operator or the convient dot operator
	  Just think of map keys the same way you think of property names in a bean
	 You ask for the key or property name, and you get back the value of the key or property -->
	Music MapList : ${musicMap}
	<hr>
	<!-- when using dot operator you asking property name same like a bean-->
	Ambient[key] is using dot operator: ${musicMap.Ambient}
	<br> Ambient[key] is using [String] operator:
	${musicMap["Ambient"]}
	<br>
	<!-- using not String in [] we searching for bound attribute named "Ambient",
		the result come back to null-->
	Ambient[key] is using [not String] operator: ${musicMap[Ambient]}
	<hr>
	<!-- it will not find it because you ask for value it never works like this
		unless you have property or key value with that name -->
	Travis[value] is using dot operator: ${musicMap.Travis}
	<br> BT[value] is using [String] operator: ${musicMap["BT"]}
	<hr>
	<!-- [] not String so: a request attribute named "Genre" with a value of "Ambient"
		AND "Ambient" is a KEY into musicMap!!!!! very carefull! -->
	Music is : ${musicMap[Genre]}
	<hr>
	<!-- [] with String NO key value in musicMap named "Genre" With String
		Container didn't try to evaluate it just ASSUMED it WAS KEY NAME!! and its not -->
	Music is : ${musicMap["Genre"]}
	<hr>
	<h4>Nested Expression:</h4>
	<br>
	<!-- this will become Music is: ${musicMap["Ambient"]} -->
	Music is: ${musicMap[MusicType[0]]}
	<!-- and with [String] we only search for KEY!! -->
	<hr>
	${characterMap.ch_left}b${characterMap.ch_right}${characterMap.ch_left}/b${characterMap.ch_right}
	Makes text bold
</body>
</html>