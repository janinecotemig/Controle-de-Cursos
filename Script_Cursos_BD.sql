CREATE DATABASE Cursos_BD;
USE Cursos_BD;

CREATE TABLE Tbl_Curso
(
	codigo        	  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nomeCurso     	  VARCHAR(40) NOT NULL,
	conteudo 	  	  VARCHAR(200) NOT NULL,
	valorMensalidade  DOUBLE NOT NULL, 
	cargaHoraria 	  INT NOT NULL
);

CREATE TABLE Tbl_Professor
(
	codigo        INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome   	      VARCHAR(40) NOT NULL,
	valorHoraAula DOUBLE NOT NULL,
	telefone      VARCHAR(20) NOT NULL
);

CREATE TABLE Tbl_Turma
(
	codigo		 INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	idCurso		 INT NOT NULL, 
	dataInicio	 DATE NOT NULL, 
	dataTermino	 DATE NOT NULL, 
	horaInicio	 VARCHAR(5) NOT NULL,
	horaTermino	 VARCHAR(5) NOT NULL, 
	idProfessor  INT NOT NULL,
	FOREIGN KEY(idCurso)     REFERENCES Tbl_Curso(codigo),
	FOREIGN KEY(idProfessor) REFERENCES Tbl_Professor(codigo)
);