CREATE DATABASE db_blog_pessoal;
USE db_blog_pessoal;

CREATE TABLE tb_temas(
	id bigint auto_increment,
    descricao varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_usuarios(
	id bigint auto_increment,
    nome varchar(255) NOT NULL,
    usuario varchar(255) NOT NULL,
    senha varchar(255) NOT NULL,
    foto varchar(255),
    PRIMARY KEY (id)
);
CREATE TABLE tb_postagens(
	id bigint auto_increment,
    titulo varchar(100) NOT NULL,
    texto varchar(1000) NOT NULL,
    data date,
    tema_id bigint,
    usuario_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (tema_id) REFERENCES tb_temas(id),
    FOREIGN KEY (usuario_id) REFERENCES tb_usuarios(id)
);