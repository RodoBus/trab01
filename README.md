# TRABALHO 01:  Título do Trabalho
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
Neste ponto a codificação não é necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas.<ahref="https://github.com/RodoBus/trab01/blob/master/balsamiq.pdf"> Mockup </a> <br>

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
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/sample_MC.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 

PASSAGEIRO: Tabela que armazena as informações relativas ao passageiro, podendo ou não estar interligadas a outras tabelas. <br>
    NOME: Campo que armazena os nomes dos passageiros cadastrados. <br>
    CPF: Campo que armazena o número de Cadastro de Pessoa Física para cada passageiro cadastrado. <br>
    TELEFONE: Campo que armazena o número de telefone para contato com os passageiros. <br>
    EMAIL: Campo que armazena o email de contato com cada passageiro cadastrado. <br>
    DATA DE NASCIMENTO: Campo que armazena a data de nascimento de cada passageiro cadastrado. <br>
    NACIONALIDADE: Campo que armazena a nacionalidade do passageiro cadastrado. <br>
    ID PASSAGEM: Campo que armazena o ID que liga o passageiro à passagem do mesmo. <br> 
        
PASSAGEM: Tabela que armazena as informações relativas à passagens ligadas a passageiros cadastrados. <br>
    ID PASSAGEM: Campo que armazena o ID da passagem, que está ligado a PASSAGEIRO - ID PASSAGEM. <br>
    ID ROTA: Campo que armazena a identificação da rota da passagem. Este campo é ligado à tabela ROTAS. <br>
    PREÇO: Campo que armazena o preço de cada passagem. <br>
        
ROTAS: Tabela que armazena as informações de cada viagem. <br>
    ID ROTA: Campo que armazena a identificação da rota. Este campo é ligado à tabela PASSAGEM. <br>
    ID COMPANHIA: Campo que identifica a companhia vinculada à rota. Este campo está vinculado à EMPRESAS.0 - ID EMPRESA. <br>
    DESTINO: Campo que armazena informações sobre o destino de cada rota. <br>
    HORA SAÍDA: Campo que armazena o horário de saída de cada rota. <br> 
    HORA CHEGADA: Campo que armazena o tempo estimado para chegada de cada rota. <br>
        
EMPRESAS.0: Primeira tabela (de três) que armazena informações sobre companhias e rodoviárias. <br>
    ID EMPRESA: Campo que armazena a identidade de cada empresa vinculada. Este campo está vinculado à ROTAS- ID ROTA; FUNCIONARIOS - ID EMPRESA. <br>
    NOME: Campo que armazena o nome de cada empresa. <br>
    CLASSIFICAÇÂO: Campo que armazena a classificação de cada empresa. Este campo está vinculado à EMPRESAS.1 - COMPANHIA; EMPRESAS.2 - RODOVIÁRIA. <br>
        
EMPRESAS.1: Segunda tabela(de três) que armazena informações sobre empresas identificadas como companhias, em EMPRESAS.0 - CLASSIFICAÇÃO <br>
     COMPANHIA: Campo que armazena o código da companhia. <br>
     TELEFONE: Campo que armazena o telefone de contato de cada companhia. <br>
     EMAIL: Campo que armazena o endereço de email  para contato com cada companhia. <br>
        
EMPRESAS.2: Terceira tabela(de três) que armazena informações sobre empresas identificadas como rodoviárias, em EMPRESAS.0 - CLASSIFICAÇÃO <br>
     RODOVIARIA: Campo que armazena o código de cada rodoviária. <br>
     ENDEREÇO(CEP): Campo que armazena o endereço residente de cada rodoviária. <br>
     HORARIO DE FUNCIONAMENTO: Campo que armazena a faixa horária de funcionamento de cada rodoviária. <br>
        
FUNCIONARIO: Tabela que armazena informações pertinentes a cada funcionário de cada companhia e rodoviária. <br>
     ID FUNCIONARIO: Campo que armazena o código que identifica cada funcionário. <br>
     ID EMPRESA: Campo que armazena o código que identifica a empresa na qual o funcionário está vinculado. <br>
     NOME: Campo que armazena os nomes de cada funcionário. <br>
     IDENTIDADE: Campo que armazena as informações sobre identidade de cada funcionário. <br>
     CPF: Campo que armazena o Cadastro de Pessoa Física de cada funcionário. <br>
     TELEFONE: Campo que armazena as informações telefônicas de contato de cada funcionário. <br>
     EMAIL: Campo que armazena o email de contato com cada funcionário. <br>
     DATA DE NASCIMENTO: Campo que armazena registros referentes à data de nascimento de cada funcionário. <br>
     NACIONALIDADE: campo que armazena a nacionalidade de cada funcionário. <br>
       
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
    -->

### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

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
