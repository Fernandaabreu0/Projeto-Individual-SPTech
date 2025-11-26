
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
	idDominio INT auto_increment,
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

drop table usuario;

select * from dominio;

select * from usuario;


INSERT INTO dominio (acertos, erros, fkTema, fkUsuario) VALUES ('1', '2', '1', '1');