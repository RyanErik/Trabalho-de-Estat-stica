a <- 4997
c <- 3333
m <- 10000
y <- c(7)
for (i in 2:10000){
  y[i] = (a * y[i - 1]  + c) %% m
}
y = y / (m - 1)
x = (-log((1 - y), base = exp(1)))^(2)
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
