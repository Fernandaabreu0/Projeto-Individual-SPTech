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
	descricao VARCHAR(45)

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

select * from usuario;

select * from dominio;
