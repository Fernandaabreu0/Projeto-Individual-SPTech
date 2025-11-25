
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
	descricao VARCHAR(100)

);

create table dominio (
	idDominio INT,
	fkTema INT,
	fkUsuario INT,
	acertos int,
	erros int,
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
('Fernanda', 'fernanda@gmail.com', 'F123');

insert into tema (titulo, descricao) values
('Pratica','São perguntas que envolvem assuntos sobre a prática do Ballet, como passos e posições'),
('Cultura', 'São perguntas que envolvem assuntos sobre a história do Ballet');