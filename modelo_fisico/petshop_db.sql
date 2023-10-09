CREATE DATABASE petshop_db

CREATE TABLE Cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(200) NOT NULL,
	idade int,
	CPF varchar(200) NOT NULL UNIQUE,
	telefone varchar(200) NOT NULL,
	email varchar(200) NOT NULL UNIQUE,
	endereco varchar(200) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 	
)
CREATE TABLE Cliente_Animal(
	id INT PRIMARY KEY AUTO_INCREMENT,
 	Cliente_id INT FOREIGN KEY,
	CONSTRAINT Cliente_id FOREIGN KEY (Cliente_id) REFERENCES Cliente(id)
	Animal_id INT,
	CONSTRAINT Animal_id FOREIGN KEY (Animal_id) REFERENCES Animal(id),
	data_adicao varchar(200) NOT NULL,
	relacao varchar(200),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CREATE TABLE Animal(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(200) NOT NULL,
	raca varchar(200) NOT NULL,
	especie varchar(200) NOT NULL,
	idade INT NOT NULL,
	peso INT NOT NULL ,
	observacao varchar(200),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 	
)
CREATE TABLE Categoria_Servico(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(200) NOT NULL UNIQUE,
	descricao varchar(200),
	tempo_estimado TIMESTAMP NOT NULL,
	preco varchar(200) NOT NULL,
	custo varchar(200) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
 	
CREATE TABLE Funcionario(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome varchar(200) NOT NULL UNIQUE,
	setor varchar(200) NOT NULL UNIQUE,
	salario varchar(200) NOT NULL UNIQUE,
	horario varchar(200) NOT NULL UNIQUE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 	
)
CREATE TABLE Atendimento(
	id INT PRIMARY KEY AUTO_INCREMENT,
 	Cliente_id INT,
	CONSTRAINT Cliente_id FOREIGN KEY (Cliente_id) REFERENCES Cliente(id),
	Servico_id INT,
	CONSTRAINT Servico_id FOREIGN KEY (Servico_id) REFERENCES Servico(id),
	Animal_id INT,
	CONSTRAINT Animal_id FOREIGN KEY (Animal_id) REFERENCES Animal(id),
	Funcionario_id INT,
	CONSTRAINT Funcionario_id FOREIGN KEY (Funcionario_id) REFERENCES Funcionario(id),
	tempo_estimado DATE NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
CREATE TABLE Funcionario_Atendimento(
	id INT PRIMARY KEY AUTO_INCREMENT,
 	Atendimento_id INT,
	CONSTRAINT Atendimento_id FOREIGN KEY (Atendimento_id) REFERENCES Atendimento(id),
	Funcionario_id INT,
	CONSTRAINT Funcionario_id FOREIGN KEY (Funcionario_id) REFERENCES Funcionario(id),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)