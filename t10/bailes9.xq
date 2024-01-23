(: Muestra los bailes de la sala 1 y su precio sea superior a 35 euros :)

for $baile in doc("bailes.xml") //bailes/baile
where $baile/sala/text()="1" and $baile/number(precio)>35
return $baile