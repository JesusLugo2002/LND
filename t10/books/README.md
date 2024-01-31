# Ejercicios de XQuery de los ficheros books.xml

A continuación se mostrarán los ejercicios de consultas realizados para los 2 archivos .xml de __books__:

## Ejercicios con 'Books1.xml'

### 1. Contar los autores por libro, iterando sobre los autores.

```xq
for $book in doc("books1.xml") //book
let $author := $book/author
return
  <libro>
     {$book/title}
     <autores>{count($author)}</autores>
  </libro>
```

### 2. Retornar la lista de libros ordenados.

```xq
for $x in doc("books1.xml") //book/title
order by $x
return $x 
```

## Ejercicios con 'Books2.xml'

### 1. Retornar los títulos de los libros en una lista de formato HTML

```xq
<ul>
{
for $x in doc("books2.xml") //book/title
order by $x
return <li>{data($x)}</li>
}
</ul> 
```

### 2. Retornar los libros en etiquetas '<child>' si su categoría es 'children', si no, en etiqueta '<adult>'.

```xq
for $book in doc("books2.xml") //book
return if ($book/@category="children")
then <child>{data($book/title)}</child>
else <adult>{data($book/title)}</adult>
```