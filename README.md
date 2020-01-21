Esta página é do curso de R para iniciantes. O curso é voltado para quem não teve contato com linguagens de programação de nenhum nível ou tem conhecimentos rudimentares sobre  a linguagem. 

- [Ementa](#ementa)
- [Estrutura do curso](#estrutura-do-curso)
- [Material do Curso](#material-do-curso)
- [Atividades swirl](#atividades-swirl) 

#### Ementa  
>Introdução a linguagem R, principais características, sintaxe básica, funções matemáticas, funções estatísticas, constantes, manipulação de dados, importação e exportação de dados, coerção de objetos, seleção e filtragem (indexação), gráficos, funções gráficas de baixo e alto nível, introdução a algoritmos e programação, iteração e recursão, programação básica no R, otimização de código, interação com outras linguagens

	
  Este curso é baseado no curso [Using R](http://ecologia.ib.usp.br/bie5782/doku.php?id=start) do curso de Pós Graduação em Ecologia da USP realizado pelos professores: Alexandre Adalardo de Oliveira, João Luís Ferreira Batista, Paulo Inácio K. L. Prado e Rodrigo Augusto Santinelo Pereira.
  
  A [apostila](http://ecologia.ib.usp.br/bie5782/doku.php?id=bie5782:03_apostila:start) utilizada no curso  [Using R](http://ecologia.ib.usp.br/bie5782/doku.php?id=start) é o material principal do curso R para iniciantes. Os exemplos de aula e  exercícios também foram inspirados, sob autorização dos autores, neste material.   
  

  
**Este é um curso de programação.**

Aprender uma linguagem de programação é muito mais que apenas colecionar receitas de códigos e macetes para resolver algumas coisas. É, sobretudo, organizar o pensamento e se habilitar a resolver problemas de modo organizado e robusto. 

Este curso tem como objetivo ensinar como estruturar a resolução de problemas usando uma linguagem de programação. A linguagem escolhida é a linguagem R por ser muito utilizada por experimentalistas que necessitam analisar conjuntos cada vez mais complexos de dados. Entretanto, as habilidades trabalhadas durante o curso tornam o aluno capaz de iniciar o aprendizado em outras linguagens de programação.

**Este não é um curso de Estatística!**

 Apesar do R ser uma linguagem voltada para análises estatísticas este curso não requer conhecimentos prévios em estatística nem se propõe em ensinar estatística.
 
 
 O assunto *estatística* é vasto demais para ser coberto em um curso de duas semanas ainda mais se o foco é aprender a programar. É recomendado que o aluno faça cursos de estatística antes ou depois desde curso de R. 
 
 

### Estrutura do curso

O curso é desenvolvido em:

- Aulas presencias no período da manhã.
- Plantões facultativos no período da tarde.
- Um tutorial e um exercício prático para cada aula.
- Tarefas para serem entregues

Este é um curso condensado e exige tempo para realização de exercícios e leituras fora da sala de aula. Por isso, há dias reservados para estudo.

| Segunda   | Quarta  | Sexta
| --------- | ------- |  ----|
| **[Aula I](https://github.com/tomatebio/R_iniciante/tree/master/AulaI)**     | **[Aula II](https://github.com/tomatebio/R_iniciante/tree/master/AulaII)**  | **[Aula III](https://github.com/tomatebio/R_iniciante/tree/master/AulaIII)**
| Programação, Algorítimos, linguagens|  Operadores matemáticos|   Manipulação de dados
| Características da linguagem R|  Operadores lógicos   |   Entrada e saída de dados
|     |  | Indexação
|**Prática** |   |
| Install Fest | Tutorial  | Tutorial 
| "Uma hora de código" | Exercício | Exercício


| Segunda   |  Quarta  | Sexta
| --------- | ------- | ----|
| **Aula IV**    | **Aula V** |   **Aula VI**
| Gráficos|  Programar em R  | Otimização
| | Funções de fluxo  | Miscelânea
| |  Erros de programação  | 
|**Prática** |  |
| Tutorial | Tutorial  | Tutorial 
| Exercício | Exercício | Exercício


### Material do Curso 

Todo o material do curso está disponível em um repositório no GitHub. Você pode acessar o repositório através desse [link](https://github.com/tomatebio/R_iniciante). 

O Github possui várias funcionalidades que servem muito bem a qualquer projeto de programação principalmente se for colaborativo. Utiliza a tecnologia git  que pode ser melhor entendida nesse [link](http://rogerdudler.github.io/git-guide/index.pt_BR.html).

Você pode baixar todo o conteudo do curso nesse [link](https://github.com/tomatebio/R_iniciante/archive/master.zip). Recomendo que crie um conta no GitHub (é de graça) e faça um fork. Assim você terá sempre o conteudo atualizado.


### Atividades swirl

Para facilitar a correção e acompanhamento das tarefas este curso vai fazer uso do pacote swirl.  Este é um pacote do R especial para aprendizado. Nele você pode encontrar diversos cursos prontos sobre muito assuntos. Nós vamos usar o "Programando em R". Este curso está na versão beta de traducão  e pode estar com alguns bugs. Ao encontra-los por favor avise-me para que eu possa corrigir. Estou trabalhando para traduzir e adapta-lo para a nossa sala de aula. Para instala-lo:


```r
# instalar o pacote swirl e outros pacotes necessários.

install.packages("swirl")
install.packages("devtools")
require(devtolls)
install_github("tidyverse/googlesheets4")
install.packages("base64enc")
install.packages("httr")

# instalar o curso
library(swirl)
install_course_github("tomatebio","Programando_em_R")

```
Se você já tiver o curso "Programando_em_R" instalado e quiser atualiza-lo você deve desinstalar a versão antiga primeiro.

```r

# Isso vai desinstalar todos os cursos que você tiver no computador

uninstall_all_courses(force=T)

# Agora você instala normalmente 
install_course_github("tomatebio","Programando_em_R")

```


A primeira vez que você rodar o swirl ele vai pedir o teu nome. Coloque o nome como está na lista de sala.

```r

 # primeiro carregue o pacote
> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep things running smoothly, I
| recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls()) to clear your
| workspace.

| Type swirl() when you are ready to begin.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then. If you
| are new, call yourself something unique.

What shall I call you? 
```

Depois de algumas telas de apresentação voce deve escolher qual curso deseja escolher

```r
1: Programando em R
2: Take me to the swirl course repository!

# Escolha 1 e depois:


| Please choose a lesson, or type 0 to return to course menu.

 1: Blocos Básicos                  2: Datas Horários                  3: Espaço de Trabalho e Arquivos
 4: Funções                         5: Graficos báscos                 6: lapply e sapply              
 7: Logica                          8: Olhando os dados                9: Sequências Numéricas         
10: Teste                          11: Valores Faltantes              12: Vetores                      

# Escolha 10-  Teste para testar o envio do teu trabalho
#  Depois de responder a complicada questão de matemática vai aparecer 

| Você quer enviar o log dessa sessão?

1: Não
2: Sim

Selection: 

# Selecione "Sim". Fique atento, pois cada vez a resposta pode mudar de número

# O R vai perguntar mais uma vez para ter certeza

```


 Na primeira vez que você usar será necessario atenticar usando uma conta Google. Para isso, será aberto de forma automática um página para você permitir o acesso. 
 
```r
Auto-refreshing stale OAuth token.
Writing to 'Curso R -2020 '
Appending 1 row(s) to 'Respostas'
Spreadsheet name: Curso R -2020 
                ID: 1pawl9xGARVHsHIHkXb8bDOFihw1_FL-Fh5TXbluHjbQ
            Locale: pt_BR
         Time zone: America/Sao_Paulo
       # of sheets: 1

(Sheet name): (Nominal extent in rows x columns)
   Respostas: 482 x 9

| You got it!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.


```
 Se a mensagem acima aparecer é sinal que deu tudo certo.
 
Se tiver problemas de enviar na primeira vez, peço que feche o R e tente novamente. Se persistir peço que rode o comando sessionInfo() e me envie a reposta do comando  por email.









