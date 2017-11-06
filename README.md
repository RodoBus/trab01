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

<a href="https://github.com/RodoBus/trab01/blob/master/Modelo%20Conceitual.png"><img src="https://github.com/RodoBus/trab01/blob/master/Modelo%20Conceitual.png" alt="Alt text" title="Modelo Conceitual" style="max-width:100%;"></a>


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
<b>Tabelas EMPRESA, EMPRESA_COMPANHIA , EMPRESA_FUNCIONARIO:</b> A escolha de utilizar 3 tabelas para as empresas foi feita com o intuito de separar os 2 tipos de empresas envolvidas no sistemas RodoBus (Companhias de Ônibus e Rodoviárias). Para facilitar e 
diferenciar a identificação dos funcionários presentes na Tabela de FUNCIONARIO. <br>

<b>Tabelas PESSOA, PESSOA_PASSAGEIRO, PESSOA_FUNCIONARIO:</b> A escolha de utilizar 3 tabelas para organizar pessoas foi feita com o intuito de separar funcionários de passageiros envolvidos no sistema RodoBus. Isto pois os dois possuem alguns atributos semelhantes, porém funcionalidades distintas. </b>

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
<br>
<b>Tabela PESSOA_PASSAGEIRO</b>: Tabela que armazena as informações relativas ao passageiro, podendo ou não estar interligadas a outras tabelas. <br>
<li>ID_PESSOA: (CHAVE PRIMARIA) Campo que armazena o ID da pessoa que está ligada à tabela passageiro </li>
<li>ID_PASSAGEIRO: Campo que armazena o ID do passageiro. </li>
<li>ID_PASSAGEM: Campo que armazena o ID que liga o passageiro à passagem do mesmo. </li>
<br>    
<b>Tabela PESSOA_FUNCIONARIO</b>: Tabela que armazena informações pertinentes a cada funcionário de cada companhia e rodoviária. <br>
<li>ID_PESSOA:  (CHAVE PRIMARIA) Campo que armazena a ID da pessoa que está ligada à tabela funcionário. </li>     
<li>ID_FUNCIONARIO: Campo que armazena o código que identifica cada funcionário. </li>
<li>ID_EMPRESA: Campo que armazena o código que identifica a empresa na qual o funcionário está vinculado. </li>
<br>
<b>Tabela PASSAGEM</b>: Tabela que armazena as informações relativas à passagens ligadas a passageiros cadastrados. <br>
<li>ID_PASSAGEM: (CHAVE PRIMARIA) Campo que armazena o ID da passagem, que está ligado a PESSOA_PASSAGEIRO - ID_PASSAGEM. </li>
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
<li>TELEFONE: Campo que armazena o telefone de contato de cada empresa. </li>
<br>        
<b>Tabela EMPRESA_COMPANHIA</b>:Tabela que armazena informações sobre empresas identificadas como companhias.
<br>
<li>ID_EMPRESA: (CHAVE PRIMARIA) Campo que armazena a identidade de cada empresa vinculada à companhia. </li>
<li>ID_COMPANHIA: (CHAVE PRIMARIA) Campo que armazena o código da companhia. </li>
<li>EMAIL: Campo que armazena o endereço de email  para contato com cada companhia. </li>
<br>        
<b>Tabela EMPRESA_RODOVIARIA</b>: Tabela que armazena informações sobre empresas identificadas como rodoviárias.
<br>
<li>ID_EMPRESA: (CHAVE PRIMARIA) Campo que armazena a identidade de cada empresa vinculada à rodoviária. </li>
<li>ID_RODOVIARIA: Campo que armazena o código de cada rodoviária. </li>
<li>ENDERECO: Campo que armazena o endereço em forma de CEP do residente de cada rodoviária. </li>
<li>HORARIO_DE_FUNCIONAMENTO: Campo que armazena a faixa horária de funcionamento de cada rodoviária. </li>
<br>        


### 6	MODELO LÓGICO<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Modelo%20L%C3%B3gico.png"><img src="https://github.com/RodoBus/trab01/blob/master/Modelo%20L%C3%B3gico.png" alt="Alt text" title="Modelo Lógico" style="max-width:100%;"></a>

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>

<a href="https://github.com/RodoBus/trab01/blob/master/Modelo%20F%C3%ADsico.sql"><img src="https://github.com/RodoBus/trab01/blob/master/Modelo%20F%C3%ADsico.sql" alt="Modelo Físico" title="Modelo Físico" style="max-width:100%;"></a>
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

Geramos os dados de forma aleatória pelos links: <br>
http://listofrandomnames.com/index.cfm <br>
http://www.geomidpoint.com/random/ <br>
http://pt.fakenamegenerator.com/ <br>
http://random-date-generator.com/ <br>

Não utilizamos códigos previamente pronto. Desenvolvemos projeto a partir de situações cotidianas. <br>


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

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
