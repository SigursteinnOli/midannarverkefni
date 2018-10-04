#Sigursteinn Óli Þorsteinsson
#19/09/18
#Verkefni 4

from sys import argv

from bottle import *
import urllib.request, json

"""
with open("gengi.json","r") as skra:
    gogn = json.load(skra)
print(gogn)
"""

with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("index.tpl",data = data)



@route("/company/<company>")
def index(company):
    return template("company",data=data, co= company)

@route("/moreinfo/<key>")
def index(key):
    return template("moreinfo.tpl",data = data, k = key)







######################################################################
@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

@error(404)
def villa(error):
    return "<h1 style = color:red>Þessi síða finnst ekki</h1>"

run(host='0.0.0.0', port=os.environ.get('PORT'))
#run(host="localhost", port =8080, reloader=True, debug=True)




