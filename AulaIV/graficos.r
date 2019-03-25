## Função plot
png("plot1.png", width=600,height=400)
x<-c(1:10)
y<-c(2:11)
plot(x,y)
dev.off()

data(airquality)
names(airquality)
airquality$date<-with(airquality,ISOdate(1973,Month,Day))

png("plot2.png", width=600,height=400)
plot(Ozone~date, data=airquality)
dev.off()

png("plot3.png", width=600,height=400)
plot(Ozone~date, data=airquality, type="l")
dev.off()

png("plot4.png", width=600,height=400)
plot(Ozone~date, data=airquality, type="h")
dev.off()

png("plot5.png", width=600,height=400)
plot(Ozone~date, data=airquality, type="h", main="Qualidade do ar",xlab="data",ylab="Ozônio",col="red")
dev.off()

png("plot6.png")
plot(x,y,type="n")
axis(4)
text(8,8,"Comentário")
mtext("texto lateral",side=4)
points(1:10,rep(4,10))
abline(h=7)
abline(v=3)
arrows(1:10,rep(4,10),1:10,rep(5,10), angle=45)
dev.off()

png("plot7.png")
par(mfrow=c(2,2),new=FALSE,family="serif")
plot(1:4,1:4,pch=19,col="green")
plot(4:1,1:4,pch=22,col="red")
plot(1:5,2:6,pch=25)
plot(1:5,1:5,pch= "p")
dev.off()

plot(Ozone~date, data=airquality)
locator(n=2)

png("doisconj.png",width=600,height=400)
x<-1:10
x2<-10:1
y<-1:10

plot(x,y,col="red",pch=16)
points(x2,y,col="blue", pch=16)
legend(5,10,legend=c("azul","vermelho"),pch=16,col=c("blue","red"))
dev.off()


png("doiseixos.png",width=600,height=400)
par(mar=c(5,4,4,5))
plot(Ozone~date, data=airquality,type="h",col="blue",ylab="Ozonio",xlab="Data")
par(new=TRUE)
plot(airquality$date,airquality$Wind,type="l", col="red",xaxt="n",yaxt="n",xlab="",ylab="")
axis(4)
mtext("Vento",side=4,line=3)
dev.off()

png("plot8.png", width=600,height=400)
bad<-ifelse(airquality$Ozone>=90,"orange","forestgreen")
plot(Ozone~date, data=airquality,type="h",col=bad)
dev.off()

require(RColorBrewer)
example(RColorBrewer)

png("plot9.png")
require(RColorBrewer)
barplot(x,col=brewer.pal(8,"BrBG"))
dev.off()

png("plot10.png")
plot(airquality)
dev.off()

png("plot11.png",)
coplot(Ozone~Solar.R|Temp*Wind, number=c(4,4),data=airquality, pch=21)
dev.off()

png("plot12.png",,width=600,height=400)
image(volcano)
dev.off()

png("plot13.png",,width=600,height=400)
wireframe(volcano)
dev.off()


png("plot14.png")
install.packages("maps")
require(maps)
map('italy', fill = TRUE, col=brewer.pal(8,"BrBG"))
dev.off()

png("plot15.png")
require(maptools)
require(sp)
mapa=readShapePoly("BRASIL")
hidro=readShapeLines("hidrografia")
summary(mapa)
summary(hidro)
#limites do mapa
plot(mapa)
par(new=T)
plot(hidro,col="blue")
dev.off()

install.packages("R2G2")
library(R2G2)
example(Pies2GE)



