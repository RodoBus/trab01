-- Modelo Físico

/* Deleta todas as tabelas caso existam */
DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS PESSOA_FUNCIONARIO;
DROP TABLE IF EXISTS EMPRESA;
DROP TABLE IF EXISTS ROTAS;
DROP TABLE IF EXISTS PASSAGEM;
DROP TABLE IF EXISTS CONTATO;
DROP TABLE IF EXISTS TIPO_CONTATO;
DROP TABLE IF EXISTS HORAS;



/* Cria tabela PESSOA */
CREATE TABLE PESSOA
(
	ID_pessoa INTEGER PRIMARY KEY,
	Nome VARCHAR[30],
	Identidade INTEGER,
	CPF INTEGER,
	Data_de_nascimento DATE,
	Nacionalidade VARCHAR[30]
);

/* Cria tabela EMPRESA */
CREATE TABLE EMPRESA 
(
	ID_empresa INTEGER PRIMARY KEY,	
	Nome VARCHAR[30],
	Horario_de_funcionamento VARCHAR[30],
	CEP INTEGER
);

/* Cria tabela PESSOA_FUNCIONARIO */
CREATE TABLE PESSOA_FUNCIONARIO
(
	ID_pessoa INTEGER,
	ID_empresa INTEGER

	FOREIGN KEY (ID_pessoa)
	REFERENCES PESSOA (ID_pessoa),
	
	FOREIGN KEY (ID_empresa)
	REFERENCES EMPRESA (ID_empresa)
);

/* Cria tabela HORAS */
CREATE TABLE HORAS 
(
	ID_hora INTEGER PRIMARY KEY,
	hora VARCHAR[30]
); 


/* Cria tabela ROTAS */
CREATE TABLE ROTAS 
(
	ID_rota INTEGER PRIMARY KEY,
	ID_hora_saida INTEGER,
	ID_hora_chegada INTEGER,
	ID_rodoviaria_saida INTEGER,
	ID_rodoviaria_chegada INTEGER,
	

	FOREIGN KEY (ID_hora_saida) 
	REFERENCES HORAS (ID_hora),

	FOREIGN KEY (ID_hora_chegada)
	REFERENCES HORAS (ID_hora),

	FOREIGN KEY (ID_rodoviaria_chegada)
	REFERENCES EMPRESA (ID_empresa),

	FOREIGN KEY (ID_rodoviaria_saida)
	REFERENCES EMPRESA (ID_empresa)
);

/* Cria tabela PASSAGEM */
CREATE TABLE PASSAGEM 
(
	ID_passagem INTEGER PRIMARY KEY,
	ID_rota INTEGER,
	ID_empresa INTEGER,
	Data_compra VARCHAR[30],
	Data_viagem VARCHAR[30],
	preco DOUBLE,
	ID_pessoa INTEGER,
	

	FOREIGN KEY (ID_rota)
	REFERENCES ROTAS (ID_rota),

	FOREIGN KEY (ID_empresa)
	REFERENCES EMPRESA (ID_empresa),

	FOREIGN KEY (ID_pessoa)
	REFERENCES PESSOA (ID_pessoa)
);

	

/* Cria tabela TIPO_CONTATO */
CREATE TABLE TIPO_CONTATO 
(
	ID_tipo_contato INTEGER PRIMARY KEY,
	tipo VARCHAR[30]
);



/* Cria tabela CONTATO */
CREATE TABLE CONTATO 
(
	ID_contato INTEGER PRIMARY KEY,
	ID_tipo_usuario INTEGER,
	contato_registro INTEGER,
	ID_tipo_de_contato INTEGER,
	
	
	FOREIGN KEY (ID_contato)
	REFERENCES PESSOA (ID_pessoa),

	FOREIGN KEY (ID_contato)
	REFERENCES EMPRESA (ID_empresa),

	FOREIGN KEY (ID_tipo_de_contato)
	REFERENCES TIPO_CONTATO (ID_tipo_contato)
);
