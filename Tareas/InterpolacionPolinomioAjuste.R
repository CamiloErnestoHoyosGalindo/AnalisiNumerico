require(PolynomF)

#Puntos a interpolar
x = c(50,100,150,200,250,300)
y = c(-100,-35,-4.2,9,16.9,27.6)
# Polinomio de ajuste 
datx = x[1:6]
daty = y[1:6]
#Llamado al polinomio de ajuste del paquete
polyAjuste = poly.calc(datx,daty)
polyAjuste = polyAjuste
print(round(polyAjuste,digits=4))
print(round(polyAjuste(450),digits=4))
#-220.2+3.1184*x-0.0161*x**2
# Gráfica de los puntos y la interpolacion
plot(x,y, pch=19, cex=1, col = "red", asp=1) 
curve(polyAjuste,add=T)