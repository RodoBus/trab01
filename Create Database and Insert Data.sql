-- Modelo Lógico


/* Cria tabela PESSOA */
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


/* Cria tabela PESSOA_PASSAGEIRO */
CREATE TABLE Pessoa_passageiro 
(
    ID_passageiro INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_passagem INTEGER,
);


/* Cria tabela PESSOA_FUNCIONARIO */
CREATE TABLE Pessoa_funcionario 
(
    ID_funcionario INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_empresa INTEGER,
);


/* Cria tabela ROTAS */
CREATE TABLE Rotas 
(
    ID_rota INTEGER PRIMARY KEY,
    Hora_chegada INTEGER,
    Hora_saida VARCHAR[30],
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER
);


/* Cria tabela EMPRESA */
CREATE TABLE Empresa 
(
    ID_empresa INTEGER PRIMARY KEY,
    Nome VARCHAR[30],
    Telefone VARCHAR[30]
);


/* Cria tabela PASSAGEM */
CREATE TABLE Passagem 
(
    ID_passagem INTEGER PRIMARY KEY,
    ID_rota INTEGER,
    ID_companhia INTEGER,
    Data_compra VARCHAR[30],
    Data_viagem VARCHAR[30],
    preco DOUBLE
);


/* Cria tabela COMPANHIA */
CREATE TABLE Companhia 
(
    ID_companhia INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    email VARCHAR[30]
);


/* Cria tabela RODOVIARIA */
CREATE TABLE Rodoviaria 
(
    ID_rodoviaria INTEGER PRIMARY KEY,
    Horario_de_funcionamento VARCHAR[30],
    ID_empresa VARCHAR[30]
);
 
 

 
 
/* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */
ALTER TABLE Pessoa_passageiro ADD CONSTRAINT FK_Pessoa_passageiro
    FOREIGN KEY (ID_pessoa)
    REFERENCES Pessoa (ID_pessoa);
 
 
/* Cria a chave estrangeira ID_passagem A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PASSAGEM */
ALTER TABLE Pessoa_passageiro ADD CONSTRAINT FK_Pessoa_passageiro
    FOREIGN KEY (ID_passagem)
    REFERENCES Passagem (ID_passagem); 
    
 
 /* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */
ALTER TABLE Pessoa_funcionario ADD CONSTRAINT FK_Pessoa_funcionario
    FOREIGN KEY (ID_pessoa)
    REFERENCES Pessoa (ID_pessoa);


 /* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE Pessoa_funcionario ADD CONSTRAINT FK_Pessoa_funcionario
    FOREIGN KEY (ID_empresa)
    REFERENCES Empresa (ID_empresa);


/* Cria a chave estrangeira ID_rodoviaria_chegada A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE Rotas ADD CONSTRAINT FK_Rotas
    FOREIGN KEY (ID_rodoviaria_chegada)
    REFERENCES Rodoviaria (ID_rodoviaria);
    

/* Cria a chave estrangeira ID_rodoviaria_saida A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE Rotas ADD CONSTRAINT FK_Rotas
    FOREIGN KEY (ID_rodoviaria_saida)
    REFERENCES Rodoviaria (ID_rodoviaria);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE Companhia ADD CONSTRAINT FK_Companhia
    FOREIGN KEY (ID_empresa)
    REFERENCES Empresa (ID_empresa);

 
 /* Cria a chave estrangeira ID_rota A PARTIR DO AUTO-RELACIONAMENTO DA TABELA ROTAS */
ALTER TABLE Passagem ADD CONSTRAINT FK_Passagem
    FOREIGN KEY (ID_rota)
    REFERENCES Rotas (ID_rota);
    

/* Cria a chave estrangeira ID_companhia A PARTIR DO AUTO-RELACIONAMENTO DA TABELA COMPANHIA */
ALTER TABLE Passagem ADD CONSTRAINT FK_Passagem
    FOREIGN KEY (ID_companhia)
    REFERENCES Rotas (ID_companhia);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE Rodoviaria ADD CONSTRAINT FK_Rodoviaria
    FOREIGN KEY (ID_empresa)
    REFERENCES Empresa (ID_empresa);
    


/* Inserts */
