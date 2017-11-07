-- Modelo Lógico


/* Cria tabela PESSOA */
CREATE TABLE PESSOA 
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
CREATE TABLE PESSOA_PASSAGEIRO 
(
    ID_passageiro INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_passagem INTEGER
);


/* Cria tabela PESSOA_FUNCIONARIO */
CREATE TABLE PESSOA_FUNCIONARIO 
(
    ID_funcionario INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_empresa INTEGER
);


/* Cria tabela ROTAS */
CREATE TABLE ROTAS 
(
    ID_rota INTEGER PRIMARY KEY,
    Hora_chegada INTEGER,
    Hora_saida VARCHAR[30],
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER
);


/* Cria tabela EMPRESA */
CREATE TABLE EMPRESA 
(
    ID_empresa INTEGER PRIMARY KEY,
    Nome VARCHAR[30],
    Telefone VARCHAR[30]
);


/* Cria tabela PASSAGEM */
CREATE TABLE PASSAGEM 
(
    ID_passagem INTEGER PRIMARY KEY,
    ID_rota INTEGER,
    ID_companhia INTEGER,
    Data_compra DATE,
    Data_viagem DATE,
    preco FLOAT
);


/* Cria tabela COMPANHIA */
CREATE TABLE COMPANHIA 
(
    ID_companhia INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    email VARCHAR[30]
);


/* Cria tabela RODOVIARIA */
CREATE TABLE RODOVIARIA 
(
    ID_rodoviaria INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    Horario_de_funcionamento TIME
);
 
 

 
 
/* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */
ALTER TABLE PESSOA_PASSAGEIRO ADD CONSTRAINT FK_Pessoa_passageiro
    FOREIGN KEY (ID_pessoa)
    REFERENCES PESSOA (ID_pessoa);
 
 
/* Cria a chave estrangeira ID_passagem A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PASSAGEM */
ALTER TABLE PESSOA_PASSAGEIRO ADD CONSTRAINT FK_Pessoa_passageiro_2
    FOREIGN KEY (ID_passagem)
    REFERENCES PASSAGEM (ID_passagem); 
    
 
 /* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */
ALTER TABLE PESSOA_FUNCIONARIO ADD CONSTRAINT FK_Pessoa_funcionario
    FOREIGN KEY (ID_pessoa)
    REFERENCES PESSOA (ID_pessoa);


 /* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE PESSOA_FUNCIONARIO ADD CONSTRAINT FK_Pessoa_funcionario_2
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);


/* Cria a chave estrangeira ID_rodoviaria_chegada A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE ROTAS ADD CONSTRAINT FK_Rotas
    FOREIGN KEY (ID_rodoviaria_chegada)
    REFERENCES RODOVIARIA (ID_rodoviaria);
    

/* Cria a chave estrangeira ID_rodoviaria_saida A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE ROTAS ADD CONSTRAINT FK_Rotas_2
    FOREIGN KEY (ID_rodoviaria_saida)
    REFERENCES RODOVIARIA (ID_rodoviaria);

 
 /* Cria a chave estrangeira ID_rota A PARTIR DO AUTO-RELACIONAMENTO DA TABELA ROTAS */
ALTER TABLE PASSAGEM ADD CONSTRAINT FK_Passagem
    FOREIGN KEY (ID_rota)
    REFERENCES ROTAS (ID_rota);
    

/* Cria a chave estrangeira ID_companhia A PARTIR DO AUTO-RELACIONAMENTO DA TABELA COMPANHIA */
ALTER TABLE PASSAGEM ADD CONSTRAINT FK_Passagem_2
    FOREIGN KEY (ID_companhia)
    REFERENCES COMPANHIA (ID_companhia);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE COMPANHIA ADD CONSTRAINT FK_Companhia
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE RODOVIARIA ADD CONSTRAINT FK_Rodoviaria
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);
    
    
    
/* SELECTS para vermos as tabelas */
SELECT * from PESSOA;
SELECT * from PESSOA_PASSAGEIRO;
SELECT * from PESSOA_FUNCIONARIO;
SELECT * from EMPRESA;
SELECT * from COMPANHIA;
SELECT * from RODOVIARIA;
SELECT * from ROTAS;
SELECT * from PASSAGEM;


