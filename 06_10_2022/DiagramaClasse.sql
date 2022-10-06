create database we_do_care;
create table produtos(
	id_produto INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_produto),
    nome_produto VARCHAR (30),
    descricao_produto VARCHAR (100),
    valor_produto INT(3.2),
    detalhe_produto VARCHAR (150),
    quantidade_produto INT (2)
);
create table usuario (
	id_usuario INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_usuario),
    nome_usuario VARCHAR (50),
    genero_usuario VARCHAR (10),
    civil_usuario VARCHAR (10),
    profissao_usuario VARCHAR (40),
    renda_usuario FLOAT (6,2),
    etinia_usuario VARCHAR (15),
    data_usuario DATE,
    cpf_usuario CHAR (14),
    rg_usuario Char (12),
    cep_usuario CHAR (9),
    endereco_usuario VARCHAR (100),
    contato_usuario CHAR (14),
    email_usuario VARCHAR (100),
    senha_usuario VARCHAR (15),
    descricao_necessidade VARCHAR (40)
);
create table categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_categoria),
    FOREIGN KEY (id_categoria) REFERENCES produtos(id_produto),
    fornecedor_categoria VARCHAR (30),
	modelo_categoria VARCHAR (30),
    material_categoria VARCHAR (30)
);
