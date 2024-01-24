<ul>
{
for $x in doc("books.xml")//book/title
order by $x
return <li>{data($x)}</li>
}
</ul> 