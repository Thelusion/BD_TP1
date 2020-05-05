CREATE DATABASE Trabalho_20181220;
USE Trabalho_20181220;

CREATE TABLE Utente(
	id int NOT NULL,
	nome VARCHAR(30) NOT NULL,
	idade INT NOT NULL,
	n_sns VARCHAR(9)
)

CREATE TABLE Analise(
	data_realizacao DATETIME NOT NULL,
	resultado INT NOT NULL,
	utente_id INT NOT NULL,
	relatorio VARCHAR(200)
)

CREATE TABLE Tecnico(
	id INT NOT NULL,
	nome VARCHAR(30),
)

CREATE TABLE Medico(
	id INT NOT NULL,
	nome VARCHAR(30)
)

CREATE TABLE Enfermeiro(
	id INT NOT NULL,
	nome VARCHAR(30)
)

CREATE TABLE Avaliacao(
	utente_id int NOT NULL,
	data_realizacao DATETIME NOT NULL,
	temperatura REAL NOT NULL,
	nivel_oxigenio INT NOT NULL,
	glicemia INT NOT NULL,
)

CREATE TABLE Consulta(
	medico_id INT NOT NULL,
	utente_id INT NOT NULL,
	data_realizacao DATETIME NOT NULL
)

CREATE TABLE Tipo_Exame(
	id INT NOT NULL,
	nome VARCHAR(30) NOT NULL
)

CREATE TABLE Exame(
	utente_id INT NOT NULL,
	data_realizacao DATETIME NOT NULL,
	tipo_exame_id INT NOT NULL,
	medico_id INT NOT NULL,
	tecnico_id INT NOT NULL,
	relatorio VARCHAR(200) NOT NULL,
	resultado VARCHAR(50) NOT NULL
)

CREATE TABLE Farmaco(
	id INT NOT NULL,
	nome VARCHAR(30) NOT NULL
)

CREATE TABLE Prescricao(
	utente_id INT NOT NULL,
	farmaco_id INT NOT NULL,
	data_prescricao DATETIME NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	medico_id INT NOT NULL
)

CREATE TABLE Quarentena(
	-- id INT NOT NULL,
	data_inicio DATETIME NOT NULL,
	data_fim DATETIME NOT NULL,
	utente_id INT NOT NULL -- Chave primaria???
)

CREATE TABLE Evento(
	id INT NOT NULL,
	nome VARCHAR(30) NOT NULL,
	localizacao VARCHAR(30) NOT NULL
)

CREATE TABLE Pais(
	id INT NOT NULL,
	nome VARCHAR(30) NOT NULL,
)

