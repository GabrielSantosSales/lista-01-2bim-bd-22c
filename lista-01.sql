INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", 'C.S. Lewis', 1950, true, "Fantasia", '978-0064471190', "HarperCollins", 768 , "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("Cem Anos de Solidão", 'Gabriel Garcia Marquez', 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", 'J.K. Rowling', 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", 'J.R.R. Tolkien', 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("Vida de Valsa", 'Dawn K.', 2012, true, "História", '978-0564477119', "Unfinil", 549 , "Francês");

update Livros
set disponivel=false
where ano_publicacao<2000;

update livros
set editora="PlumeBooks"
where titulo="1984";

update livros
set idioma = "Inglês"
where editora= "Penguin Books";

update livros
set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
where ISBN= '978-0439708180';  

delete from livros where categoria = "Terror";

delete from livros where idioma = "Francês" and ano_publicacao<1970;

delete from livros where titulo="As Crônicas de Nárnia";

delete from livros where editora= "Penguin Books";

select *
from livros
where quantidade_paginas>500
order by quantidade_paginas asc;

select categoria,count(categoria)
from livros
group by categoria;

select *
from livros
limit 5;

select categoria,sum(quantidade_paginas),avg(quantidade_paginas)
from livros
where categoria="drama";

select avg(ano_publicacao)
from livros
where disponivel=true;

SELECT min(id),MIN(ano_publicacao),max(id),max(ano_publicacao)
FROM livros;

select *
from livros
order by ano_publicacao desc;

SELECT titulo,idioma FROM livros
where idioma="Inglês"
UNION
SELECT titulo,idioma FROM livros
where idioma="Português";

select *
from livros
where autor = "George Orwell";