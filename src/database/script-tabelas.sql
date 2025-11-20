-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE aquatech;

USE aquatech;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(45)
);

CREATE TABLE tema (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(45),
	descricao VARCHAR(45),

);

create table dominio (
	idDominio INT,
	fkTema INT,
	fkUsuario INT,
	acertos int,
	erros int,
    pontuacaoFinal int,
	porcentagemDominio Float,
	constraint pkComposta
		primary key (idDominio, fkTema, fkUsuario),
	constraint fkTemaDominio
		foreign key (fkTema)
		references tema(id),
	constraint fkUsuarioDominio
		foreign key (fkUsuario)
		references usuario(id)
);



insert into usuario (nome, email, senha) values 
('Mirian', 'mirian@gmail.com', 'Mi123');

