<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{co}}</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<link rel="stylesheet" type="text/css" href="/static/css.css">
</head>
<body>
	%include("header.tpl")
	<div class="table">
		<table>
			<tr class="white">
				<th>Fyrirtæki</th>
				<th>Staður</th>
			</tr>
			<%
				cnt = 0
				for i in data["results"]:
					if i["company"] == co:
					cnt += 1
			%>
				<tr>
					<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
					<td class="white">{{i['name']}}</td>
				</tr>
			<%
					end
				end 
			%>

		</table>
		<h3 class="white">Fjöldi stöðva: {{cnt}}</h3>
		



		<a href="/">Til baka</a>
	</div>
	%include("footer.tpl")
</body>
</html>
