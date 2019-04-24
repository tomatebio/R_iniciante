## Programa que calcula as despesas de uma republica

## Saudação do programa
print("Balanço de despesas da Republica")

# Insira o numero de moradores 
print("número de moradores")
moradores<-scan(n=1)

# Inicia o data. frame vazio para guardar os dados

gastos<-data.frame()


# Preenche o data frame com os dados
for (i in 1:moradores){
  print("Nome da pessoa")
  gastos[i,1]<-scan(n=1,what="character")
  print(paste("Gastos de",gastos[i,1]))
  gastos[i,2]<-scan(n=1)
 }

# Nomeia as duas primeiras colunas
names(gastos)<-c("Nome","Gasto")

# Calcula a média dos gastos e o saldo
gastos$media<-mean(gastos[,2])
gastos$saldo<-gastos$Gasto-gastos$media

#Imprime o resultado na tela
print(gastos)

