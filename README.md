# TRABALHO 01:  RodoBus
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Hugo Ramalho: ramalho.hg@gmail.com<br>
Maria Luiza de Freitas: malufrt@hotmail.com<br>
Vitor Salzman: vitor-salzman96@hotmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Entre os meios de transporte existentes no estado do Espírito Santo, o transporte rodoviário por ônibus é o mais comum. <br>
Porém, diferente dos aeroportos, rodoviárias capixabas não contam com uma organização devidamente implementada. O projeto <br>
rodobus busca uma solução para esse problema, dispondo de um banco de dados que envolve toda logística do sistema de <br>
transporte rodoviário capixaba. Este projeto contém a especificação do banco de dados do projeto RodoBus. <br>

### 3.MINI-MUNDO<br>
A ideia do projeto é criar um sistema robusto, intuitivo para a gestão dos sistemas de transportes rodoviários para <br>
passageiros, empregando neste setor o mesmo nível de robustez aplicado nos aeroportos. <br>
O projeto RodoBus oferecerá uso conveniente a clientes, funcionários de rodoviárias e viações vinculadas. <br>
O sistema terá camadas de trabalho diferentes, tais como a camada de trabalho das rodoviárias, que será reservada ao uso <br>
de funcionários da rodoviária, a camada das empresas, na qual funcionários das viações rodoviárias terão acesso, e a <br>
camada dos clientes. <br>
Será possível realizar o cadastro de rotas, clientes, empresas, rodoviárias e funcionários. Todos esses dados obedecendo a <br>
uma rígida lógica e hierarquia com a finalidade de manter coesa e tão real quanto possível a logística do sistema rodoviário. <br>
As demais funções, como cadastro, consulta, alteração e deleção de clientes, empresas, rotas, rodoviárias, ficará reservado <br>
apenas aos usuários responsáveis para tal operação. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não é necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas.<a href="https://github.com/RodoBus/trab01/blob/master/balsamiq.pdf"> Mockup </a> <br>

<!--
Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
-->

#### 4.1 TABELA DE DADOS DO SISTEMA:
<img src="https://github.com/RodoBus/trab01/blob/master/Tabelas%20mesclada%20e%20separadas.xlsx" title="Tabela do sistema" style="max-width:100%;">

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
O sistema gera relatórios com as informações: <br>
- Passageiros. <br>
- Passagens. <br>
- Companhias vinculadas. <br>
- Rotas de viagens. <br>
- Funcionários das rodoviárias. <br>
- Funcionários das companhias. <br>
- Rodoviárias do estado. <br>
- Passagens mais compradas por ano. <br>
- Histórico de passagens feitas pelo passageiro. <br>
- Escala dos funcionários. <br>
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20MODELOS/Modelo%20Conceitual.png"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20MODELOS/Modelo%20Conceitual.png" alt="Alt text" title="Modelo Conceitual" style="max-width:100%;"></a>


    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Harã Henrique, Guilherme Bodart, Edmilton da Silva Junior.
    [Grupo02]: Tarcísio Bruni, Lucas Erlacher, Caio Kinupp.   
 



#### 5.2 DECISÕES DE PROJETO
<b>Tabelas CONTATO, TIPO_CONTATO:</b> A escolha de utilizar 2 tabelas para contatos foi feita com o intuito de normalizar os 2 tipos de contato existentes, englobando TELEFONE, TELEFONE CELULAR, EMAIL, CEP das tabelas PESSOA e EMPRESA envolvidas no sistemas RodoBus.<br>

<b>Tabelas PESSOA, PESSOA_FUNCIONARIO:</b> A escolha de utilizar 2 tabelas para organizar pessoas foi feita com o intuito de separar funcionários envolvidos no sistema RodoBus. Isto pois os funcionários possuem informações referentes a empresas, que não cabem a passageiros comuns. </b>

<br>
    
<!--
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!
-->

#### 5.3 DESCRIÇÃO DOS DADOS 


<b>Tabela PESSOA</b>: Tabela que armazena as informações relativas a cada indivíduo cadastrado no sistema. <br>
<li>ID PESSOA: Campo que armazena o código de cada indivíduo cadastrado. </li>
<li>NOME: Campo que armazena os nomes das pessoas cadastradas. </li>
<li>IDENTIDADE: Campo que armazena o Registro Geral de cada pessoa cadastrada. </li>
<li>CPF: Campo que armazena o número de Cadastro de Pessoa Física para cada indivíduo cadastrado. </li>
<li>TELEFONE: Campo que armazena o número de telefone para contato com cada pessoa. </li>
<li>EMAIL: Campo que armazena o email de contato com cada indivíduo cadastrado. </li>
<li>DATA_DE_NASCIMENTO: Campo que armazena a data de nascimento de cada pessoa cadastrada. </li>
<li>NACIONALIDADE: Campo que armazena a nacionalidade de cada pessoa cadastrada. </li>
<b>
<b>Tabela PESSOA_FUNCIONARIO</b>: Tabela que armazena informações pertinentes a cada funcionário de cada companhia e rodoviária. <br>
<li>ID_PESSOA:  (CHAVE PRIMARIA) Campo que armazena a ID da pessoa que está ligada à tabela funcionário. </li>     
<li>ID_EMPRESA: Campo que armazena o código que identifica a empresa na qual o funcionário está vinculado. </li>
<br>
<b>Tabela CONTATO</b>: Tabela que armazena contatos de pessoas e empresas.<br>
<li>ID_PESSOA: Campo que armazena a ID da pessoa ligada aos contatos da tabela.</li>    
<li>ID_EMPRESA: Campo que armazena a ID da empresa ligada aos contatos da tabela.</li>    
<li>CONTATO_REGISTRO: Campo que armazena o contato da pessoa ou empresa identificado por ID.</li>
<li>TIPO_CONTATO: Campo que armazena o tipo de contato contido na tabela.</li>
<br>
<b>Tabela TIPO_CONTATO</b>: Tabela que armazena o tipo de contato ligado à tabela CONTATO.<br>
<li>ID_TIPO_CONTATO: Campo que armazena a ID do tipo de contato registrado.</li>     
<li>TIPO: Campo que armazena o tipo do contato presente no registro.</li>
<br>
<b>Tabela PASSAGEM</b>: Tabela que armazena as informações relativas à passagens ligadas a passageiros cadastrados. <br>
<li>ID_PASSAGEM: (CHAVE PRIMARIA) Campo que armazena o ID da passagem, que está ligado a PESSOA_PASSAGEIRO - ID_PASSAGEM. </li>
<li>ID_PESSOA: Campo que armazena o ID da pessoa que comprou a passagem. </li>
<li>ID_ROTA: Campo que armazena a identificação da rota da passagem. Este campo é ligado à tabela ROTAS. </li>
<li>ID_COMPANHIA: Campo que armazena a ID da companhia vinculada à passagem. </li>
<li>DATA_COMPRA: Campo que armazena a data e horário de compra da passagem. </li>
<li>DATA_VIAGEM: Campo que armazena a data da viagem vinculada à passagem. </li>
<li>PRECO: Campo que armazena o preço de cada passagem. </li>
<br>
<b>Tabela ROTAS</b>: Tabela que armazena as informações de cada viagem. <br>
<li>ID_ROTA: (CHAVE PRIMARIA) Campo que armazena a identificação da rota. Este campo é ligado à tabela PASSAGEM. </li>
<li>HORA_SAIDA: Campo que armazena o horário de saída de cada rota. </li>
<li>HORA_CHEGADA: Campo que armazena o tempo estimado para chegada de cada rota. </li>
<li>ID_RODOVIARIA_SAIDA: Campo que armazena a rodoviária origem de cada rota. </li>
<li>ID_RODOVIARIA_CHEGADA: Campo que armazena a rodoviária destino de cada rota. </li>
<br>   
<b>Tabela EMPRESA</b>: Tabela que armazena informações sobre cada empresa. <br>
<li>ID_EMPRESA: (CHAVE PRIMARIA) Campo que armazena a identidade de cada empresa vinculada. 
    Este campo está vinculado à ROTAS- ID ROTA; FUNCIONARIOS - ID EMPRESA. </li>
<li>NOME: Campo que armazena o nome de cada empresa. </li>
<li>CEP: Campo que armazena o endereço da empresa. </li>
<li>HORARIO_DE_FUNCIONAMENTO: Campo que armazena a faixa horária de funcionamento de cada empresa. </li>
<br>        



### 6	MODELO LÓGICO<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20MODELOS/Modelo%20L%C3%B3gico.png"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20MODELOS/Modelo%20L%C3%B3gico.png" alt="Alt text" title="Modelo Lógico" style="max-width:100%;"></a>

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Arquivos%20SQL/Modelo%20F%C3%ADsico.sql">Modelo Físico</a>
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

Geramos os dados de forma aleatória pelos links: <br>
http://listofrandomnames.com/index.cfm <br>
http://random-date-generator.com/ <br>
http://www.calcprofi.com/pt/gerador-de-numeros-de-telefone-aleatorio.html <br>

Não utilizamos códigos previamente pronto. Desenvolvemos projeto a partir de situações cotidianas. <br>


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        
<a href="https://github.com/RodoBus/trab01/blob/master/Arquivos%20SQL/Inserts%20data.sql">Script de insert de dados ao banco.</a>

<!--        
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
-->

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        
<a href="https://github.com/RodoBus/trab01/blob/master/Arquivos%20SQL/Create%20Database%20and%20Insert%20Data.sql">Script de criação do banco, inserção dos dados e backup das tabelas. </a>

<!--
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
-->


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Arquivos%20SQL/bd_rodobus.sql">Todo o código SQL, com inserts, e selects.</a>


#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>


SELECT * FROM PESSOA

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_1.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_1.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_2.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_2.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM PESSOA_PASSAGEIRO;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_PASSAGEIRO.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_PASSAGEIRO.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM PESSOA_FUNCIONARIO;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_FUNCIONARIO.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PESSOA_FUNCIONARIO.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM EMPRESA;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_EMPRESA.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_EMPRESA.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>



SELECT * FROM COMPANHIA;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_COMPANHIA.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_COMPANHIA.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM RODOVIARIA;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_RODOVIARIA.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_RODOVIARIA.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM ROTAS;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_ROTAS.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_ROTAS.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * FROM PASSAGEM;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PASSAGEM.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.1_PASSAGEM.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>



#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>


SELECT * from PESSOA where NACIONALIDADE != 'Brasil';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_1.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_1.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * from PASSAGEM where PRECO > 40.00;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_2.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_2.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * from ROTAS where ID_RODOVIARIA_SAIDA = 3; 
<br>
(3 é a ID_EMPRESA do 'Terminal Rodoviário de Vila Velha' presente em EMPRESA)

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_3.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_3.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * from ROTAS where HORA_SAIDA > '12:00';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_4.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.2_4.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)

SELECT * from PASSAGEM where DATA_COMPRA >= '01/11/2017';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_1.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_1.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT ID_EMPRESA,NOME as "Viação" from EMPRESA where NOME like 'Viação_%';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_2.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_2.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT ID_PESSOA,NOME as "Cliente",CPF from PESSOA;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_3.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_3.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * from PASSAGEM where PRECO < 45.00;

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_4.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_4.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT ID_PESSOA,NOME,EMAIL from PESSOA where NOME like 'T_%' and EMAIL like '%_gmail.com';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_5.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_5.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>


SELECT * from PASSAGEM where PRECO > 40.00 and DATA_COMPRA >= '01/11/2017';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_6.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.3_6.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


<!--
a) Criar no mínimo 2 com operadores lógicos
b) Criar no mínimo 2 com operadores aritméticos
c) Criar no mínimo 2 com operação de renomear campo
 -->    


#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

SELECT * from PESSOA where NOME like 'J%';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_1.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_1.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT ID_PESSOA,NOME,CPF from PESSOA where NOME like '%_o';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_2.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_2.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>


SELECT * from EMPRESA where NOME like '%a';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_3.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_3.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>



SELECT * from EMPRESA where NOME like 'Viação_%';

<a href="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_4.PNG"><img src="https://github.com/RodoBus/trab01/blob/master/Imagens%20SELECT/9.4_4.PNG" alt="Alt text" title="..." style="max-width:100%;"></a>
<br>
<br>



>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
