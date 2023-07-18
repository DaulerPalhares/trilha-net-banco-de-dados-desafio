--1
SELECT Nome ,Ano FROM Filmes
--2
SELECT Nome ,Ano FROM Filmes ORDER BY ano ASC
--3
SELECT Nome ,Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
--4
SELECT Nome ,Ano, Duracao FROM Filmes WHERE Ano = 1997
--5
SELECT Nome ,Ano, Duracao FROM Filmes WHERE Ano > 2000
--6
SELECT Nome ,Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC
--7
SELECT Ano, COUNT(Ano) quantidade FROM Filmes GROUP BY Ano ORDER by Quantidade DESC
--8
SELECT Id,PrimeiroNome,UltimoNome,Genero FROM Atores WHERE Genero = 'M'
--9
SELECT Id,PrimeiroNome,UltimoNome,Genero FROM Atores WHERE Genero = 'F' Order by PrimeiroNome
--10
SELECT F.Nome , g.Genero FROM Filmes F 
    INNER JOIN FilmesGenero FG on FG.IdFilme = F.Id
    LEFT JOIN Generos G on G.Id = FG.IdGenero
--11
SELECT F.Nome , g.Genero FROM Filmes F 
    INNER JOIN FilmesGenero FG on FG.IdFilme = F.Id
    LEFT JOIN Generos G on G.Id = FG.IdGenero WHERE G.Genero = 'Mistério'
--12
SELECT F.Nome,A.PrimeiroNome,A.UltimoNome,EF.Papel FROM Filmes F 
    INNER JOIN ElencoFilme EF ON EF.IdFilme = f.Id
    INNER JOIN Atores A ON A.Id = EF.IdAtor