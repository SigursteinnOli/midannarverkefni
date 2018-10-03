<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bensínstöðvar</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<link rel="stylesheet" type="text/css" href="/static/css.css">
</head>
<body>
	%include("header.tpl")
	<div class="myndir">
		<img src="/static/ao.jpg">
		<img src="/static/co.jpg">
		<img src="/static/dl.png">
		<img src="/static/n1.png">
		<img src="/static/ob.jpg">
		<img src="/static/ol.jpg">
		<img src="/static/o.png">
		<img src="/static/ox.jpg">
		
	</div>
	<div class ="wrapper">
	<%
		minpriceP = 2000.0
		minpriceD = 2000.0

		l = len(data["results"])
		c = 0
		for i in range(l-1):
			c=i
			if minpriceP > data['results'][i]['bensin95']:
				minpriceP = data['results'][i]['bensin95']
				companyP = data['results'][i]['company']
			end
			if minpriceD > data['results'][i]['diesel']:
				minpriceD = data['results'][i]['diesel']
				companyD = data['results'][i]['company']
			end

		if data["results"][i]["company"] != data["results"][i-1]["company"]:
		%>

		<div class="box">
			<a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
		</div>
		<%
		end
	end
	%>
	</div>
	<div class="box">
		<h3>Besta verðið</h3>
		<h4>Bensín 95 oktan: <i>{{minpriceP}}</i> kr. er hjá {{companyP}}</h4>
		<h4>Dísel: <i>{{minpriceD}}</i> kr. er hjá {{companyD}}</h4>
	</div>
%include("footer.tpl")
</body>

</html>

