-- Modelo Lógico


CREATE TABLE Pessoa 
(
    ID_pessoa INTEGER PRIMARY KEY,
    Nome VARCHAR[30],
    Identidade VARCHAR[30],
    CPF VARCHAR[30],
    Nacionalidade VARCHAR[30],
    Telefone VARCHAR[30],
    Email VARCHAR[30],
    Data_de_nascimento DATE
);


CREATE TABLE Pessoa_passageiro 
(
    ID_passageiro INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_passagem INTEGER,
    ID_pessoa INTEGER
);


CREATE TABLE Pessoa_funcionario 
(
    ID_funcionario INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_empresa INTEGER,
    ID_pessoa INTEGER
);


CREATE TABLE Rotas 
(
    ID_rota INTEGER PRIMARY KEY,
    Hora_chegada INTEGER,
    Hora_saida VARCHAR[30],
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER
);


CREATE TABLE Empresa 
(
    ID_empresa INTEGER PRIMARY KEY,
    Nome VARCHAR[30],
    Telefone VARCHAR[30]
);


CREATE TABLE Passagem 
(
    ID_passagem INTEGER PRIMARY KEY,
    ID_rota INTEGER,
    ID_companhia INTEGER,
    Data_compra VARCHAR[30],
    Data_viagem VARCHAR[30],
    preco DOUBLE
);


CREATE TABLE Companhia 
(
    ID_companhia INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    email VARCHAR[30]
);


CREATE TABLE Rodoviaria 
(
    ID_rodoviaria INTEGER PRIMARY KEY,
    Horario_de_funcionamento VARCHAR[30],
    ID_empresa VARCHAR[30]
);
 
 
 

ALTER TABLE Rotas ADD CONSTRAINT ID_rota
    FOREIGN KEY (ID_rota???)
    REFERENCES ??? (???);
 
 
ALTER TABLE Pessoa_passageiro ADD CONSTRAINT ID_passageiro
    FOREIGN KEY (ID_pessoa)
    REFERENCES Pessoa (ID_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
 
ALTER TABLE Pessoa_funcionario ADD CONSTRAINT FK_Pessoa_funcionario_1
    FOREIGN KEY (ID_pessoa)
    REFERENCES Pessoa (ID_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
 
ALTER TABLE Pessoa_funcionario ADD CONSTRAINT FK_Pessoa_funcionario_2
    FOREIGN KEY (ID_pessoa???, ID_empresa???, ID_pessoa???)
    REFERENCES ??? (???);
 
 
ALTER TABLE Passagem ADD CONSTRAINT FK_Passagem_1
    FOREIGN KEY (ID_rota???, ID_companhia???)
    REFERENCES Rotas (???, ???);
 
 
ALTER TABLE Companhia ADD CONSTRAINT FK_Companhia_1
    FOREIGN KEY (FK_Empresa_ID_empresa)
    REFERENCES Empresa (ID_empresa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
 
ALTER TABLE Companhia ADD CONSTRAINT FK_Companhia_2
    FOREIGN KEY (ID_empresa???)
    REFERENCES ??? (???);
 
 
ALTER TABLE Rodoviaria ADD CONSTRAINT FK_Rodoviaria_1
    FOREIGN KEY (ID_empresa???)
    REFERENCES Empresa (???)
    ON DELETE CASCADE ON UPDATE CASCADE;




ALTER TABLE Pessoa_passageiro ADD CONSTRAINT FK_Pessoa_passageiro_1
    FOREIGN KEY (FK_Pessoa_ID_pessoa)
    REFERENCES Pessoa (ID_pessoa);
 
 
ALTER TABLE Pessoa_funcionario ADD CONSTRAINT FK_Pessoa_funcionario_1
    FOREIGN KEY (FK_Pessoa_ID_pessoa)
    REFERENCES Pessoa (ID_pessoa);


ALTER TABLE Companhia ADD CONSTRAINT FK_Companhia_1
    FOREIGN KEY (FK_Empresa_ID_empresa)
    REFERENCES Empresa (ID_empresa);
 
 
ALTER TABLE Rodoviaria ADD CONSTRAINT FK_Rodoviaria_1
    FOREIGN KEY (FK_Empresa_ID_empresa)
    REFERENCES Empresa (ID_empresa);
 
