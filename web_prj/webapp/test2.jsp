<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table.paleBlueRows {
  font-family: "Times New Roman", Times, serif;
  border: 1px solid #FFFFFF;
  width: 350px;
  height: 200px;
  text-align: center;
  border-collapse: collapse;
}
table.paleBlueRows td, table.paleBlueRows th {
  border: 1px solid #FFFFFF;
  padding: 3px 2px;
}
table.paleBlueRows tbody td {
  font-size: 13px;
}
table.paleBlueRows tr:nth-child(even) {
  background: #D0E4F5;
}
table.paleBlueRows thead {
  background: #0B6FA4;
  border-bottom: 5px solid #FFFFFF;
}
table.paleBlueRows thead th {
  font-size: 17px;
  font-weight: bold;
  color: #FFFFFF;
  text-align: center;
  border-left: 2px solid #FFFFFF;
}
table.paleBlueRows thead th:first-child {
  border-left: none;
}

table.paleBlueRows tfoot {
  font-size: 14px;
  font-weight: bold;
  color: #333333;
  background: #D0E4F5;
  border-top: 3px solid #444444;
}
table.paleBlueRows tfoot td {
  font-size: 14px;
}
</style>
</head>
<body>  
<% 
for(int i=0; i<10; i++) {
	out.println(i);
}

%>
<a href="/aa/bb/cc.jjang">Servlet GO!!</a>
 
<!-- post -->
<form action="/aa/bb/cc.jjang" method="post">
<input type="text" name="mid"><br>
<input type="password" name="mpw"><br>

<input type="checkbox" name="habit" value="mot">등산
<input type="checkbox" name="habit" value="book">독서<br>

<input type="radio" name="gen" value="m">남
<input type="radio" name="gen" value="f">여<br>

<input type="file" name="ufile"><br>

<select name="addr">
	<option value="seoul">서울</option>
	<option value="dj">대전</option>
	<option value="dg">대구</option>
</select><br>

<textarea rows=5 cols="20" name="memo">
글쓰기본문....
</textarea><br>

----
<input type="hidden" name="skey" value="1234"><br>
----


<input type="submit" name="sbtn" value="가입하기">
<input type="button" name="btn" value="일반버튼">
<input type="image" name="ibtn" src="tomcat.png">
<input type="reset" name="rbtn" value="취소"><br>






</form>


<br>
<table class="paleBlueRows"  width=300 height=100 border=1 cellpadding=0 cellspacing=0>
<tbody>
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>이름</td>
	</tr>
	<tr>
		<td>1</td>
		<td>kim</td>
		<td>김씨</td>
	</tr>
	<tr>
		<td>2</td>
		<td>lee</td>
		<td>이씨</td>
	</tr>
</tbody>	
</table>

<a href="http://www.naver.com">네이버클릭~</a>
<img src="tomcat.png" width=30 height=30><br>
<font size=10 color=red>안녕</font><br>
11<br>
22<br><br>
33<p>
44<p><p>
55

</body>
</html>