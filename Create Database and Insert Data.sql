CREATE TABLE Rotas 
(
    Hora_chegada VARCHAR[30],
    ID_rota INTEGER PRIMARY KEY,
    Hora_saida VARCHAR[30],
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER
);


CREATE TABLE Empresa 
(
    Nome VARCHAR[30],
    ID_empresa INTEGER PRIMARY KEY,
    Telefone VARCHAR[30]
);


CREATE TABLE Pessoa 
(
    Nome VARCHAR[30],
    Identidade VARCHAR[30],
    CPF VARCHAR[30],
    Nacionalidade VARCHAR[30],
    ID_pessoa INTEGER PRIMARY KEY,
    Telefone VARCHAR[30],
    Email VARCHAR[30],
    Data_de_nascimento DATE
);


CREATE TABLE Pessoa_passageiro 
(
    ID_passageiro INTEGER,
    ID_pessoa INTEGER,
    ID_passagem INTEGER,
    FK_Pessoa_ID_pessoa INTEGER,
    PRIMARY KEY (ID_passageiro, FK_Pessoa_ID_pessoa)
);


CREATE TABLE Pessoa_funcionario 
(
    ID_funcionario INTEGER,
    ID_pessoa INTEGER,
    ID_empresa INTEGER,
    FK_Pessoa_ID_pessoa INTEGER,
    PRIMARY KEY (ID_funcionario, FK_Pessoa_ID_pessoa)
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
    ID_companhia INTEGER,
    ID_empresa INTEGER,
    email VARCHAR[30],
    FK_Empresa_ID_empresa INTEGER,
    PRIMARY KEY (ID_companhia, FK_Empresa_ID_empresa)
);


CREATE TABLE Rodoviaria 
(
    Horario_de_funcionamento VARCHAR[30],
    ID_rodoviaria INTEGER,
    FK_Empresa_ID_empresa INTEGER,
    PRIMARY KEY (ID_rodoviaria, FK_Empresa_ID_empresa)
);




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
 
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_0
    FOREIGN KEY (FK_Pessoa_passageiro_ID_passageiro, FK_Pessoa_passageiro_FK_Pessoa_ID_pessoa)
    REFERENCES Pessoa_passageiro (ID_passageiro, FK_Pessoa_ID_pessoa);
 
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (FK_Passagem_ID_passagem)
    REFERENCES Passagem (ID_passagem);
    
    
    
    
/* Colocar inserts aq */
