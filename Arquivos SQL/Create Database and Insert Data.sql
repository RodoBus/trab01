-- Todo código sql
-- Incluindo drop table, create table, inserts, selects dos tópicos 9


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





 




/* Insere valores na tabela PESSOA */
INSERT INTO PESSOA (ID_PESSOA,NOME,IDENTIDADE,CPF,NACIONALIDADE,DATA_DE_NASCIMENTO) VALUES
(1,'Jorge Teixeira Coelho',3950847,1758095381,'Brasil','1989/01/14'),
(2,'Moisés Fernandes Silva',216671,4768964313,'Chile','1990/06/11'),
(3,'Rodrigo Ferreira da Silva',2766111,12589964525,'Brasil','1978/09/07'),
(4,'Ciro Ferreira',3950847,12356698745,'Brasil','1988/09/05'),
(5,'José Antônio da Silva',156554,15857798654,'Brasil','1991/03/01'),
(6,'Alberto Gomes Ferreira',133397,45688715698,'França','1990/05/22'),
(7,'José Pereira da Silva',3216549,13257743751,'Brasil','1968/05/15'),
(8,'Carlos Alberto Senzi',4562783,15897664201,'Brasil','1973/05/23'),
(9,'Antônio Giestas Pinheiro',3968754,13258846759,'Argentina','1992/01/07'),
(10,'Terezinha Venâncio Flores',3652879,45398764210,'Brasil','1957/12/20'),
(11,'Thais Oliveira Negris',1659335,89764464531,'Brasil','1974/07/11'),
(12,'Paulo José de Almeida',3639853,15689945756,'Portugal','1987/03/18'),
(13,'Ricardo Ramalho Ramos',3698641,489643154,'Brasil','1957/10/01'),
(14,'Josefa Borges Zucarato',3590253,01475426215,'Brasil','1995/10/15'),
(15,'William Matheus de Jesus Rekel',3482600,70758296920,'Brasil','1999/10/10'),
(16,'Felipe Bastos de Sá',3591266,14851523365,'Brasil','1990/01/15'),
(17,'Julia Menezes de Assis',3598203,70787563653,'Brasil','1996/04/12'),
(18,'Jordão Soares Araújo',3554798,01754726285,'Africa','1975/03/01'),
(19,'Maria Aparecida do Carmo',3459759,14897160658,'Brasil','1969/05/29'),
(20,'Pablo Roberto Garcia',3850472,01735760653,'Mexico','1988/09/22'),
(21,'Cecila Caraveo',3122478,01725760754,'Rússia','1995/01/27'),
(22,'Maryann Kissee',3712488,11722730755,'Canadá','1992/07/26'),
(23,'Susanne Holiman',3225499,63423753134,'Brasil','1974/07/11'),
(24,'Olene Stengel',3312477,19835012431,'Alemanha','1979/08/28'),
(25,'Clayton Mcdonalds',3512567,13205438801,'Inglaterra','1984/08/19'),
(26,'Rudolf Bohner',3444562,12255438800,'Brasil','1964/06/29'),
(27,'Florinda Holen',3612566,01555426215,'Brasil','1968/06/12'),
(28,'Grace Alessi',3332561,11253347755,'Argentina','1992/07/26'),
(29,'Danilo Keeth',3117562,55888715692,'Brasil','1997/10/02'),
(30,'Pansy Montoro',3837569,1482798653,'Brasil','1989/10/02');


/* Insere valores na tabela CONTATO_PESSOA */ 
INSERT INTO CONTATO_PESSOA(ID_CONTATO,ID_PESSOA,CONTATO_REGISTRO,ID_TIPO_DE_CONTATO) VALUES
(1,1,'(27)981376439',3),
(2,1,'jcoelho@live.com',2),
(3,2,'(27)33246505',1),
(4,2,'moises43@live.com',2),
(5,3,'(27)33450987',1),
(6,3,'rod.fv@yahoo.com',2),
(7,4,'(27)33246878',1),
(8,4,'cirox@hotmail.com',2),
(9,5,'(27)34547806',1),
(10,5,'jos99@live.com',2),
(11,6,'(27)87921004',3),
(12,6,'albert6@gmail.com',2),
(13,7,'(27)998887761',3),
(14,7,'jose_per4@gmail.com',2),
(15,8,'(27)33254879',1),
(16,8,'carlos_senzi@ifes.br',2),
(17,9,'(27)981657899',3),
(18,9,'antonio_gs@gmail.com',2),
(19,10,'(27)33214566',1),
(20,10,'tete@live.com',2),
(21,11,'(27)32334567',1),
(22,11,'thais_linda@gmail.com',2),
(23,12,'(27)998786166',3),
(24,12,'paulo_jos1@gmail.com',2),
(25,13,'(27)33645521',1),
(26,13,'ricard_r@gmail.com',2);


/* Insere valores na tabela CONTATO_EMPRESA */ 
INSERT INTO CONTATO_EMPRESA(ID_EMPRESA,CONTATO_REGISTRO,ID_TIPO_DE_CONTATO) VALUES
(1,'(27)40041010',1),
(2,'(27)30550279',2),
(3,'80072321',3),
(4,'33334444',1),
(5,'55557777',1),
(5,'sac@aguiabranca.com.br',2),
(6,'sac@gontijo.com.br',2),
(6,'33338888',2),
(6,'sac@gontijo.com.br',2),
(7,'99999999',1),
(7,'sac@itapemirim.com.br',2),
(8,'99998888',2),
(8,'sac@planeta.com.br',2),
(9,'sac@kaissara.com.br',2),
(10,'sac@alvorada.com.br',2);

 /* Insere valores na tabela TIPO_CONTATO */ 
INSERT INTO TIPO_CONTATO(ID_TIPO_CONTATO,TIPO) VALUES
(1,'Telefone'),
(2,'Email'),
(3,'Telefone Celular');

/* Insere valores na tabela EMPRESA */
INSERT INTO EMPRESA (ID_EMPRESA,NOME,HORARIO_DE_FUNCIONAMENTO,CEP) VALUES
(1,'Terminal Rodoviário de Carapina Águia Branca','23 horas','29020-255'),
(2,'Terminal Rodoviária de Vitória Carlos Alberto V. Campos','23 horas','291038-22'),
(3,'Terminal Rodoviário de Vila Velha','7 às 22','29160-042'),
(4,'Terminal Rodoviário de Domingos Martins','24 horas','29165-480'),
(5,'Viação Águia Branca','24 horas','29166-888'),
(6,'Viação Gontijo','24 horas','29160-500'),
(7,'Viação Itapemirim','7 às 22','29548-055'),
(8,'Viação Planeta','24 horas','30475-151'),
(9,'Viação Kaissara','8 às 20 horas','29151-643'),
(10,'Viação Alvorada','24 horas','29150-801');



/* Insere valores na tabela ROTAS */
INSERT INTO ROTAS (ID_ROTA,HORA_CHEGADA,HORA_SAIDA,ID_RODOVIARIA_SAIDA,ID_RODOVIARIA_CHEGADA) VALUES
(1,'22:15','18:05',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(2,'07:00','22:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(3,'12:00','08:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(4,'07:00','19:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(5,'08:00','22:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(6,'02:00','10:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(7,'02:00','07:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(8,'02:00','12:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(9,'22:00','01:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(10,'12:00','15:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(11,'23:00','05:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(12,'09:00','16:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(13,'07:00','10:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(14,'09:00','21:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1)),
(15,'03:00','13:00',(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1),(SELECT ID_RODOVIARIA FROM RODOVIARIA ORDER BY random() LIMIT 1));


/* Insere valores na tabela PASSAGEM */
INSERT INTO PASSAGEM (ID_PASSAGEM,ID_PESSOA,ID_ROTA,ID_COMPANHIA,DATA_COMPRA,DATA_VIAGEM,PRECO) VALUES
(1,1,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/10/2017,20:56:53','05/11/2017',87.00),
(2,1,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'05/10/2017,15:15:01','01/11/2017',87.00),
(3,2,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'05/10/2017,19:01:50','02/11/2017',87.00),
(4,3,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'13/10/2017,08:55:49','02/11/2017',35.00),
(5,4,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'14/10/2017,12:00:30','14/12/2017',35.00),
(6,5,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'25/10/2017,13:10:20','15/11/2017',45.00),
(7,5,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'26/10/2017,21:58:11','15/11/2017',45.00),
(8,6,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'30/10/2017,23:58:11','17/11/2017',20.00),
(9,6,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:58:11','30/11/2017',105.00),
(10,6,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:58:11','15/11/2017',48.00),
(11,7,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:59:11','15/11/2017',48.00),
(12,8,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,00:58:11','21/12/2017',180.00),
(13,9,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,21:58:11','05/11/2017',78.00),
(14,10,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,22:58:11','15/11/2017',38.00),
(15,11,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,22:59:11','18/12/2017',93.00),
(16,12,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'11/11/2017,22:59:11','08/01/2018',120.00),
(17,13,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'12/11/2017,13:59:11','08/12/2017',26.00),
(18,14,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'12/11/2017,22:59:11','13/12/2017',65.00);



/* Insere valores na tabela PESSOA_FUNCIONARIO */
INSERT INTO PESSOA_FUNCIONARIO(ID_PESSOA,ID_EMPRESA) VALUES
(1,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(2,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(3,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(4,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(5,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(6,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1));



/* Visualiza todas as informações das tabelas */
SELECT * FROM PESSOA;
SELECT * FROM PESSOA_FUNCIONARIO;
SELECT * FROM EMPRESA;
SELECT * FROM ROTAS;
SELECT * FROM PASSAGEM;
SELECT * FROM CONTATO_EMPRESA;
SELECT * FROM CONTATO_PESSOA;
SELECT * FROM TIPO_CONTATO;
