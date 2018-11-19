
Fx <- function(x) 
{
  cos(x)
}
# Halla la raiz de Fx
nParticiones <- function(a,b,n) {
  x<-seq(a,b,0.1)
  plot(x,Fx(x),type="l", col="purple")
  abline(h=0,col="black")
  x<-b
  d<-(a+b)/n
  i<-0
  error<-abs(a-b)/n
  while (error > 1.e-4) {
    i<-i+1
    if (Fx(x) == 0)
      {
      break
      }
    if (Fx(x)*Fx(a) < 0) b <- x else {a <- x}
    d<-x
    x<-(a+b)/2
    error<-abs(a-b)/n
    cat("X=",x,"\tError=",error,"\n",sep="")
  }
}
#Llamar la función para encontrar la raiz en un intervalo
# @param punto inicial, punto final, numero de particiones
nParticiones(-3,1,4)