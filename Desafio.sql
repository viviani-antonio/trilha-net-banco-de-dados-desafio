----- 1 
SELECT Nome, Ano From Filmes

------ 2
SELECT Nome, Ano, Duracao From Filmes ORDER BY Ano ASC

------ 3 
SELECT Nome, Ano, Duracao From Filmes WHERE Nome  LIKE '%futuro'

------- 4
SELECT Nome, Ano, Duracao From Filmes WHERE Ano = 1997

------- 5
SELECT Nome, Ano, Duracao From Filmes WHERE  2000 < Ano

------- 6
SELECT Nome, Ano, Duracao From Filmes WHERE  100 < Duracao AND Duracao < 150 ORDER BY Duracao ASC 

------- 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY SUM(Duracao) DESC;

------- 8
SELECT PrimeiroNome, UltimoNome, Genero From Atores WHERE Genero = 'M'

-------- 9 
SELECT PrimeiroNome, UltimoNome, Genero From Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

---------10
SELECT f.Nome as Nome, g.Genero as Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

---------- 11
SELECT f.Nome as Filme, g.Genero as Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

------------ 12
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON e.IdAtor = a.Id;