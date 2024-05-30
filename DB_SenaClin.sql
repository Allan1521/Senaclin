CREATE DATABASE db_senacli;

USE db_senacli;

CREATE TABLE Paciente(
idPaciente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
cpf VARCHAR(11) NOT NULL,
tipoLogradouro VARCHAR(50) NOT NULL,
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(4)NOT NULL,
complemento VARCHAR(11) NOT NULL,
telefone VARCHAR(9) NOT NULL,
CONSTRAINT PRIMARY KEY (idPaciente)
);

CREATE TABLE Dentista(
idDentista INT AUTO_INCREMENT NOT NULL,
nomeDentista VARCHAR(50) NOT NULL,
CRO VARCHAR(8) NOT NULL,
especialidade VARCHAR(50) NOT NULL,
telefone VARCHAR(8) NOT NULL,
celular VARCHAR(9) NOT NULL,
CONSTRAINT PRIMARY KEY (idDentista)
);

CREATE TABLE Consulta(
idConsulta INT AUTO_INCREMENT NOT NULL,
DataConsulta date NOT NULL,
HoraConsulta time NOT NULL,
tipoconsulta VARCHAR(50) NOT NULL,
observacao VARCHAR(100) NOT NULL,
idPaciente INT NOT NULL,
idDentista INT NOT NULL,
CONSTRAINT PRIMARY KEY (idConsulta)
CONSTRAINT fk1_Consulta_Paciente FOREIGN KEY (idPaciente)REFERENCES paciente(idPaciente),
CONSTRAINT fk2_Consulta_Dentista FOREIGN KEY (idDentista)REFERENCES dentista(iddentista)
);



