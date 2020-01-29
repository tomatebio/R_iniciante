

### Programacão em R




## Funcao Condicional

#par ou impar?
a<-12
if(a%%2==0){
 print("É par")
  }else{
  print("É impar")
  }

#ifelse
numero<- c(0,1,2,3,4,5,6,7,NA)

ifelse(numero%%2==0,"par","impar")

#for
alunos<-matrix(1:12,ncol=3)
numero.alunos<-dim(alunos)[1]

medias<-c()
for(i in 1:numero.alunos){
 medias[i]<-mean(alunos[i,])
}

medias

for(banana in seq(1,20,3))
        print(1*5)
##

numero<-40013
aux<-numero-1
primo<-TRUE
while(primo==TRUE & aux>1){
      if(numero%%aux==0){
          primo<-FALSE

      }else{

          aux=aux-1
          print(aux)
      }
}
print(primo)

for(i in 1:100){
 print(i)
}

## Escopo de uma funcao
media <-function(x)
    {
        soma=sum(x)
        nobs=length(x)
        media=soma/nobs
        return(media)
    }


## Fora do escopo
soma=sum(c(3,4,5))
soma=1
media2 <-function(x)
    {
         nobs=length(x)
        media=soma/nobs
        return(media)
     }
media2(c(3,4,5))



## Mais de um objeto para retornar
mediaEsoma <-function(x)
    {
        soma=sum(x)
        nobs=length(x)
        media=soma/nobs
        return(c(media,soma))
    }



# DEPURACAO DE CODIGO

for(i in 1:10){
  cat(i,"\n")
  stopifnot(i<5)
}

# Depurando uma função
media <-function(x)
    {
        soma=sum(x)
        nobs=length(x)
        media=soma/nobs
        return(media)
    }
debug(media)
media(c(1,2,3))
undebug(media)


# Medindo o tempo

Ehprimo<-function(numero=7){
aux<-numero-1
primo<-TRUE
while(primo==TRUE &aux>1){
      if(numero%%aux==0){
      primo<-FALSE}

      aux=aux-1
}
return(primo)
}

## comparando tempo
system.time(Ehprimo(400001))
system.time(Ehprimo(4001))


system.time(mean(1:10000000))
system.time(media(1:10000000))

url<-"http://ecologia.ib.usp.br/bie5782/lib/exe/fetch.php?media=dados:esaligna.csv"

system.time(read.csv(url))
system.time(read.csv("esaligna.csv"))


#####


# É primo melhor versão
isPrime <- function(n) {
  if (n == 2) return(TRUE)
  if ( (n <= 1) || ( n %% 2 == 0 ) ) return(FALSE)
  for( i in 3:sqrt(n) ) {
    if ( n %% i == 0 ) return(FALSE)
  }
  TRUE
}

system.time(isPrime(400001))
system.time(Ehprimo(400001))


# Melhorando a nossa funcao EhPrimo
Ehprimo2<-function(numero){
aux<-sqrt(numero)
primo<-TRUE
while(primo==TRUE &aux>1){
      if(numero%%aux==0){
      primo<-FALSE}

      aux=aux-1
}
return(primo)
}
system.time(Ehprimo2(400001))
system.time(Ehprimo(400001))

FizzBuzz<-function(num){
    x<-seq(1,num)
    xx <- x
    xx[x %% 3 == 0] <- "Fizz"
    xx[x %% 5 == 0] <- "Buzz"
    xx[x %% 15 == 0] <- "FizzBuzz"
    return(xx)
}
