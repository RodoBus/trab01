-- Modelo Físico


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


/* Cria tabela EMPRESA */
CREATE TABLE EMPRESA 
(
    ID_empresa INTEGER PRIMARY KEY,
    Nome VARCHAR[30],
    Telefone VARCHAR[30]
);


/* Cria tabela COMPANHIA */
CREATE TABLE COMPANHIA 
(
    ID_companhia INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    email VARCHAR[30],
	
	FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa)
    
);


/* Cria tabela RODOVIARIA */
CREATE TABLE RODOVIARIA 
(
    ID_rodoviaria INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    Horario_de_funcionamento TIME,
	
	FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa)
    
);


/* Cria tabela ROTAS */
CREATE TABLE ROTAS 
(
    ID_rota INTEGER PRIMARY KEY,
    Hora_saida TIME,
    Hora_chegada TIME,
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER,
	
	FOREIGN KEY (ID_rodoviaria_chegada)
    REFERENCES RODOVIARIA (ID_rodoviaria)
	
	FOREIGN KEY (ID_rodoviaria_saida)
    REFERENCES RODOVIARIA (ID_rodoviaria)
);


/* Cria tabela PASSAGEM */
CREATE TABLE PASSAGEM 
(
    ID_passagem INTEGER PRIMARY KEY,
    ID_rota INTEGER,
    ID_companhia INTEGER,
    Data_compra DATE,
    Data_viagem DATE,
    preco FLOAT,
	
	FOREIGN KEY (ID_rota)
    REFERENCES ROTAS (ID_rota)

    FOREIGN KEY (ID_companhia)
    REFERENCES COMPANHIA (ID_companhia)
    
);


/* Cria tabela PESSOA_PASSAGEIRO */
CREATE TABLE PESSOA_PASSAGEIRO 
(
    ID_passageiro INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_passagem INTEGER,
	
	FOREIGN KEY (ID_pessoa) 
    REFERENCES PESSOA (ID_pessoa)
	
	FOREIGN KEY (ID_passagem)
    REFERENCES PASSAGEM (ID_passagem)
);


/* Cria tabela PESSOA_FUNCIONARIO */
CREATE TABLE PESSOA_FUNCIONARIO 
(
    ID_funcionario INTEGER PRIMARY KEY,
    ID_pessoa INTEGER,
    ID_empresa INTEGER,
	
	FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa)
	
	FOREIGN KEY (ID_pessoa)
    REFERENCES PESSOA (ID_pessoa)
);
