  ##  Ánalise de variancia em populacoes de ..
      ## Fulano da Silva 
      # 18/2/2019 
 
      # Pacotes
        require(ggplot)
        require(MASS)

      # Funcoes
        source(funcoes.r)

      # Dados de entrada
     input<-"dados/medicoes.txt"



## Funcao que faz a media e soma
# INPUT  my_vector  um vetor de numero
## OUTPUT um escalar com a média

my_mean <- function(my_vector) {
   sum(my_vector)/length(my_vector)
}



## Nomes sao importantes
## 
## evite as palavras que já sejam usadas no R : mean, diff
## evite acentos
## Cuidado com ambiguidades


## Péssimos exemplos

   media<-
   medN<-
   ppop<-
   
## Melhor
## 
   mediaDaParcela<-
   medicaoNumerica<-
   probabilidadePopulacinal<-
   probPopulacional<-
   
   quandoComecarUmaPalavraColoqueEmMaiuscula  "CamelCase"
   
   separar_as_palavras_por_ "snake_case"
    
  
   
    
## Não reutiluze os nomes, adicione sufixos. Padronize!

  amostra<-
  amostra_media<-mean(amostra)
  amostra.desvio<-sd(amostra)
  

## Use identacao no codigo 

numero<-21
aux<-numero-1
primo<-TRUE
while(primo==TRUE &aux >1){
if(numero%%aux==0){
primo<-FALSE

}else{
    
aux=aux-1
print(aux)
}
}
print(primo)




## Olha que mais "bunitinho"
## 8 tabs
numero<-21
aux<- numero-1
primo<-TRUE
while( primo==TRUE &aux >1){
        if( numero%%aux==0){
                primo<- FALSE
                
        }else{
                
                aux= aux-1
                print(aux)
        }
}
print(primo)

x<- 1
plot(x,)



## Criador automatico de pastas 
install.packages("ProjectTemplate")
library("ProjectTemplate")

create.project("aulaCOMSOL", rstudio.project=T)




## Criar um . Rproj
## Sistema do rstudio para criar projetos
## 
## 
## 
## 
## 
## 





