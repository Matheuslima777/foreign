CREATE DATABASE Livraria;

SHOW DATABASES;

USE Livraria;

CREATE TABLE Livraria.autores(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Num_Pag INT NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kingle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');


SELECT * FROM Livraria.autores
WHERE Autor LIKE 'o%';


SELECT * FROM Livraria.autores;  -- faz com que todos os dados da tabela sejam puxados



SELECT  autor, editora, ano_de_publicacao, Valor_Kingle FROM livraria.autores where Valor_Kingle < 40; -- para puxar os dados através do valor kindle menor que 40


SELECT  autor,livro, ano_de_publicacao, editora FROM livraria.autores where  sexo_autor = 'Feminino' and editora = 'Sextante' and ano_de_publicacao > 2017; -- para puxar osexo do autor como feminino e a editora sextante com ano de publicação maior que 2017 foi utilizaado o operador logico and para que apareça apenas se corresponder as 3 condições


SELECT livro, editora FROM livraria.autores where Num_Pag > 200; -- para puxar os dados de livros com numero de paginas maior que 200

SELECT livro, Num_pag, Autor FROM livraria.autores WHERE Autor like 'c%';  -- questão 4

SELECT Autor, editora, Ano_de_Publicacao From livraria.autores Where editora = 'Alta Books' and Sexo_Autor= 'Masculino'; -- questão 5

SELECT livro, autor, Num_pag, editora, Ano_de_Publicacao FROM livraria.autores WHERE Valor_Capa_Comum > 40; -- questao 6

SELECT livro, editora, Valor_Capa_comum FROM livraria.autores WHERE Autor like 'Nathalia%'; -- questao 7

SELECT livro, autor, Num_pag FROM livraria.autores WHERE Ano_de_Publicacao <= 2017; -- questao 8

SELECT autor FROM livraria.autores WHERE Editora = 'Sextante' and Num_Pag > 200; -- questão 9

SELECT livro, autor, valor_capa_comum FROM livraria.autores WHERE  Valor_Capa_Comum > 30; -- questao 10







create database Empresa;

use Empresa;

 CREATE TABLE Clientes(
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Email VARCHAR(255) NOT NULL UNIQUE,
 Telefone VARCHAR(22)  NOT NULL, 
 Id_Endereco INT,
 FOREIGN KEY(Id_Endereco) REFERENCES Enderecos(Id)
 );
 
 CREATE TABLE Enderecos (
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Logradouro VARCHAR(255) NOT NULL,
 Cep VARCHAR(11) NOT NULL,
 Numero VARCHAR(5),
 Complemento TEXT(255),
 Cidade VARCHAR (255)
 );
 
 


    
    
  