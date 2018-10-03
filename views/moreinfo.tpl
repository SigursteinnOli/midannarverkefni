<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{k}}</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<link rel="stylesheet" type="text/css" href="/static/css.css">
</head>
<body>
	%include("header.tpl")
	
	<%
	ben = 0
	dis = 0
	stod = ""
	comp = ""
	for i in data['results']:
		if i['key'] == k:
			ben = i['bensin95']
			dis = i['diesel']
			stod = i['name']
			comp = i['company']
	%>
	<div class="table">
		<h2>{{comp}} {{stod}}</h2>
		<h3>Bensín verð á líterinn: {{ben}}</h3>
		<h3>Dísel verð á líterinn: {{dis}}</h3>
	</div>
	<div class="kort">
		<h4 class="table">Staðsettning</h4>
		<ul>
			<li>Staðsettning latitude: {{i['geo']['lat']}}</li>
			<li>Staðsettning longitude: {{i['geo']['lon']}}</li>
			<li><a href="https://www.google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z">Staðsettning á Google Maps&trade;</a></li>
		</ul>
	</div>



	<div class="table">
		<a href="/">Til baka</a>
	</div>

%include("footer.tpl")
</body>

</html>
