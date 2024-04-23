a <- 4997
c <- 3333
m <- 10000
x <- c(7)
for (i in 2:10000){
  x[i] = (a * x[i - 1]  + c) %% m
}
x = x / (m - 1)
x = x * 8 + 4
hist(x,
     breaks = 100,
     freq = F,
     main = "Histograma da densidade de 10000 amostras")
plot(x, y, main = "gráfico da CDF")

soma = 0
for(i in 1:10000){
  soma = soma + x[i]
}
media = soma/10000
media 

som = 0
for(i in 1:10000){
  som = som + (x[i] - media)^2
}
variancia = som / 10000
variancia