-- Todo código sql
-- Incluindo create table, inserts, selects dos tópicos 9


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
    email VARCHAR[30]
);


/* Cria tabela RODOVIARIA */
CREATE TABLE RODOVIARIA 
(
    ID_rodoviaria INTEGER PRIMARY KEY,
    ID_empresa INTEGER,
    Horario_de_funcionamento TIME
);


/* Cria tabela ROTAS */
CREATE TABLE ROTAS 
(
    ID_rota INTEGER PRIMARY KEY,
    Hora_saida TIME,
    Hora_chegada TIME,
    ID_rodoviaria_saida INTEGER,
    ID_rodoviaria_chegada INTEGER
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

 
 

 
 
/* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */

ALTER TABLE PESSOA_PASSAGEIRO
    ADD FOREIGN KEY (ID_pessoa) 
    REFERENCES PESSOA (ID_pessoa);

 
/* Cria a chave estrangeira ID_passagem A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PASSAGEM */
ALTER TABLE PESSOA_PASSAGEIRO 
    FOREIGN KEY (ID_passagem)
    REFERENCES PASSAGEM (ID_passagem); 
    
 
 /* Cria a chave estrangeira ID_pessoa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA PESSOA */
ALTER TABLE PESSOA_FUNCIONARIO 
    FOREIGN KEY (ID_pessoa)
    REFERENCES PESSOA (ID_pessoa);


 /* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE PESSOA_FUNCIONARIO
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);


/* Cria a chave estrangeira ID_rodoviaria_chegada A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE ROTAS 
    FOREIGN KEY (ID_rodoviaria_chegada)
    REFERENCES RODOVIARIA (ID_rodoviaria);
    

/* Cria a chave estrangeira ID_rodoviaria_saida A PARTIR DO AUTO-RELACIONAMENTO DA TABELA RODOVIARIA */
ALTER TABLE ROTAS 
    FOREIGN KEY (ID_rodoviaria_saida)
    REFERENCES RODOVIARIA (ID_rodoviaria);

 
 /* Cria a chave estrangeira ID_rota A PARTIR DO AUTO-RELACIONAMENTO DA TABELA ROTAS */
ALTER TABLE PASSAGEM 
    FOREIGN KEY (ID_rota)
    REFERENCES ROTAS (ID_rota);
    

/* Cria a chave estrangeira ID_companhia A PARTIR DO AUTO-RELACIONAMENTO DA TABELA COMPANHIA */
ALTER TABLE PASSAGEM 
    FOREIGN KEY (ID_companhia)
    REFERENCES COMPANHIA (ID_companhia);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE COMPANHIA 
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);
    
    
/* Cria a chave estrangeira ID_empresa A PARTIR DO AUTO-RELACIONAMENTO DA TABELA EMPRESA */
ALTER TABLE RODOVIARIA
    FOREIGN KEY (ID_empresa)
    REFERENCES EMPRESA (ID_empresa);
    
    





/* Insere valores na tabela PESSOA */
INSERT INTO PESSOA (ID_PESSOA,NOME,IDENTIDADE,CPF,NACIONALIDADE,TELEFONE,EMAIL,DATA_DE_NASCIMENTO) VALUES
(1,'Jorge Teixeira Coelho',3950847,1758095381,'Brasileiro',27981376440,'jcoelho@live.com','14/01/1989'),
(2,'Moisés Fernandes Silva',216671,4768964313,'Brasileiro',2733246506,'moises43@live.com','11/06/1990'),
(3,'Rodrigo Ferreira da Silva',2766111,12589964525,'Brasileiro',2733450988,'rod.fv@yahoo.com','07/09/1978'),
(4,'Ciro Ferreira',3950847,12356698745,'Brasileiro',2733246879,'cirox@hotmail.com','05/09/88'),
(5,'José Antônio da Silva',156554,15857798654,'Brasileiro',2754547806,'jos99@live.com','01/03/1991'),
(6,'Alberto Gomes Ferreira',133397,45688715698,'Brasileiro',2787921004,'albert6@gmail.com','22/05/1990'),
(7,'José Pereira da Silva',3216549,13257743751,'Brasileiro',27998887761,'jose_per4@gmail.com','1968/05/15'),
(8,'Carlos Alberto Senzi',4562783,15897664201,'Brasileiro',2733254879,'carlos_senzi@ifes.br','1973/05/23'),
(9,'Antônio Giestas Pinheiro',3968754,13258846759,'Argentino',27981657899,'antonio_gs@gmail.com','1992/01/07'),
(10,'Terezinha Venâncio Flores',3652879,45398764210,'Brasileiro',2733214566,'tete@live.com','1957/12/20'),
(11,'Thais Oliveira Negris',1659335,89764464531,'Brasileiro',2732334567,'thais_linda@gmail.com','1974/07/11'),
(12,'Paulo José de Almeida',3639853,15689945756,'Português',27998786166,'paulo_jos1@gmail.com','1987/03/18'),
(13,'Ricardo Ramalho Ramos',3698641,489643154,'Brasileiro',2733645521,'ricard_r@gmail.com','1957/10/01'),
(14,'Josefa Borges Zucarato',3590253,01475426215,'Brasileiro',2733385426,'jojo_zuca10@hotmail.com','1995/10/15'),
(15,'William Matheus de Jesus Rekel',3482600,70758296920,'Brasileiro',2730658484,'will.i.am@hotmail.com','1999/10/10'),
(16,'Felipe Bastos de Sá',3591266,14851523365,'Brasileiro',2733154767,'felipe_do_volei@live.com','1990/01/15'),
(17,'Julia Menezes de Assis',3598203,70787563653,'Brasileiro',2731352007,'juliassis@hotmail.com','1996/04/12'),
(18,'Jordão Soares Araújo',3554798,01754726285,'Brasileiro',2730417187,'jordaraujo@gontijo.com.br','1975/03/01'),
(19,'Maria Aparecida do Carmo',3459759,14897160658,'Brasileiro',2732412700,'maria.carminha@hotmail.com','1969/05/29'),
(20,'Pablo Roberto Garcia',3850472,01735760653,'Mexicano',2730648494,'pablito.violao@live.com','1988/09/22'),
(21,'Cecila Caraveo',3122478,01725760754,'Belga',2732448394,'cece@gmail.com','1995/01/27'),
(22,'Maryann Kissee',3712488,11722730755,'Canadense',2784529693,'mary@hotmail.com','1992/07/26'),
(23,'Susanne Holiman',3225499,63423753134,'Brasileira,2773301507,'susaninha@gmail.com','1974/07/11'),
(24,'Olene Stengel',3312477,19835012431,'Alemã',,'olenest@hotmail.com','1979/08/28'),
(25,'Clayton Mcdonalds',3512567,13205438801,'Inglês',2782484288,'clay@live.com','1984/08/19'),
(26,'Rudolf Bohner',3444562,12255438800,'Brasileiro',2728536304,'bohner@hotmail.com','1964/06/29'),
(27,'Florinda Holen',3612566,01555426215,'Brasileira',2755545607,'donaflorinda@hotmail.com','1968/06/12'),
(28,'Grace Alessi',3332561,11253347755,'Argentina',2759511865,'alessi_grace@hotmail.com','1992/07/26'),
(29,'Danilo Keeth',3117562,55888715692,'Brasileiro',2733580572,'danike@hotmail.com','1997/10/02'),
(30,'Pansy Montoro',3837569,1482798653,'Brasileira',2746261091,'pansy@gmail.com','1989/10/02');


/* Insere valores na tabela EMPRESA */
INSERT INTO EMPRESA (ID_EMPRESA,NOME,TELEFONE) VALUES
(1,'Terminal Rodoviário de Carapina Águia Branca',2721689543),
(2,'Terminal Rodoviária de Vitória Carlos Alberto V. Campos',2795867541),
(3,'Terminal Rodoviário de Vila Velha',2774636287),
(4,'Terminal Rodoviário de Domingos Martins',2721546388),
(5,'Viação Águia Branca',2721205363),
(6,'Viação Gontijo',2721224000),
(7,'Viação Itapemirim',2721215600),
(8,'Viação Planeta',2721277000),
(9,'Viação Kaissara',21225748),
(10,'Viação Alvorada',21205542);


/* Insere valores na tabela COMPANHIA */
INSERT INTO COMPANHIA (ID_COMPANHIA,ID_EMPRESA,EMAIL) VALUES
(1,5,'sac@aguiabranca.com.br'),
(2,6,'sac@gontijo.com.br'),
(3,7,'sac@itapemirim.com.br'),
(4,8,'sac@planeta.com.br'),
(5,9,'sac@kaissara.com.br'),
(6,10,'sac@alvorada.com.br');


/* Insere valores na tabela RODOVIARIA */
INSERT INTO RODOVIARIA (ID_RODVIARIA,ID_EMPRESA,HORARIO_DE_FUNCIONAMENTO) VALUES
(1,1,'24 horas'),
(2,2,'24 horas'),
(3,3,'8 as 22 horas'),
(4,4,'24 horas');


/* Insere valores na tabela ROTAS */
INSERT INTO ROTAS (ID_ROTA,HORA_SAIDA,HORA_CHEGADA,ID_RODOVIARIA_SAIDA,ID_RODOVIARIA_CHEGADA) VALUES
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
INSERT INTO PASSAGEM (ID_PASSAGEM,ID_ROTA,ID_COMPANHIA,DATA_COMPRA,DATA_VIAGEM,PRECO) VALUES
(1,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/10/2017,20:56:53','05/11/2017',87.00),
(2,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'05/10/2017,15:15:01','01/11/2017',87.00),
(3,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'05/10/2017,19:01:50','02/11/2017',87.00),
(4,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'13/10/2017,08:55:49','02/11/2017',35.00),
(5,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'14/10/2017,12:00:30','14/12/2017',35.00),
(6,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'25/10/2017,13:10:20','15/11/2017',45.00),
(7,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'26/10/2017,21:58:11','15/11/2017',45.00),
(8,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'30/10/2017,23:58:11','17/11/2017',20.00),
(9,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:58:11','30/11/2017',105.00),
(10,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:58:11','15/11/2017',48.00),
(11,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'01/11/2017,21:59:11','15/11/2017',48.00),
(12,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,00:58:11','21/12/2017',180.00),
(13,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,21:58:11','05/11/2017',78.00),
(14,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,22:58:11','15/11/2017',38.00),
(15,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'02/11/2017,22:59:11','18/12/2017',93.00),
(16,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'11/11/2017,22:59:11','08/01/2018',120.00),
(17,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'12/11/2017,13:59:11','08/12/2017',26.00),
(18,(SELECT ID_ROTA FROM ROTAS ORDER BY random() LIMIT 1),(SELECT ID_COMPANHIA FROM COMPANHIA ORDER BY random() LIMIT 1),'12/11/2017,22:59:11','13/12/2017',65.00);


/* Insere valores na tabela PESSOA_PASSAGEIRO */
INSERT INTO PESSOA_PASSAGEIRO (ID_PASSAGEIRO,ID_PESSOA,ID_PASSAGEM) VALUES
(1,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),1),
(2,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),2),
(3,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),3),
(4,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),5),
(5,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),10),
(6,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),6),
(7,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),12),
(8,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),8),
(9,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),9),
(10,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),4),
(11,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),11),
(12,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),7),
(13,(SELECT ID_PESSOA FROM PESSOA ORDER BY random() LIMIT 1),13);


/* Insere valores na tabela PESSOA_FUNCIONARIO */
INSERT INTO PESSOA_FUNCIONARIO(ID_FUNCIONARIO,ID_PESSOA,ID_EMPRESA) VALUES
(1,1,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(2,3,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(3,4,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(4,6,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(5,7,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1)),
(6,8,(SELECT ID_EMPRESA FROM EMPRESA ORDER BY random() LIMIT 1));



 



/* 9.1 CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) */
SELECT * from PESSOA;
SELECT * from PESSOA_PASSAGEIRO;
SELECT * from PESSOA_FUNCIONARIO;
SELECT * from EMPRESA;
SELECT * from COMPANHIA;
SELECT * from RODOVIARIA;
SELECT * from ROTAS;
SELECT * from PASSAGEM;


/* 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4) */
SELECT * from PESSOA where NACIONALIDADE != 'BRASIL';
SELECT * from PASSAGEM where PRECO > '40.00';
SELECT * from ROTAS where ID_RODOVIARIA_SAIDA = 'Terminal Rodoviário de Vila Velha';


/* 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6) */
SELECT * from PASSAGEM where DATA_COMPRA => '01/11/2017';
SELECT ID_PESSOA,NOME as 'Cliente',CPF from PESSOA;
SELECT ID_EMPRESA,NOME as 'Viação from EMPRESA where NOME like 'Viação_%';
SELECT * from PASSAGEM where PRECO < 45.00;
SELECT ID_PESSOA,NOME,EMAIL where NOME like 'T_%' and EMAIL like '%_hotmail.com';
SELECT * from PASSAGEM where PRECO > 40.00 and DATA_VIAGEM < '01/11/2017';


/* 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4)  */
SELECT * from PESSOA where NOME like 'J%';
SELECT ID_PESSOA,NOME,CPF from PESSOA where NOME like '_o%';
SELECT * from EMPRESA where NOME like '%a';
SELECT * from EMPRESA where NOME like 'Viação_%';