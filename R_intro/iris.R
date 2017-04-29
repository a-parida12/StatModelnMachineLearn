data("iris")

summary(iris$Sepal.Length)
Sepal_length=summary(iris$Sepal.Length)

summary(iris$Petal.Length)
Petal_length=summary(iris$Petal.Length)

summary(iris$Sepal.Width)
Sepal_width=summary(iris$Sepal.Width)

summary(iris$Petal.Width)
Petal_width=summary(iris$Petal.Width)

hist(iris$Sepal.Length)
hist(iris$Sepal.Length,breaks = 20)

sertosa=iris$Species==levels(iris$Species)[1]
sertosa_no=iris[sertosa,]$Sepal.Length<5.5
sprintf("%d %s flowers have Sepal Length <5.5, rest %d do not",sum(sertosa_no),levels(iris$Species)[1],50-sum(sertosa_no))

virginica=iris$Species==levels(iris$Species)[3]
virginica_no=iris[virginica,]$Sepal.Length<5.5
sprintf("%d %s flowers have Sepal Length <5.5, rest %d do not",sum(virginica_no),levels(iris$Species)[3],50-sum(virginica_no))

versicolor=iris$Species==levels(iris$Species)[2]
versicolor_no=iris[versicolor,]$Sepal.Length<5.5
sprintf("%d %s flowers have Sepal Length <5.5, rest %d do not",sum(versicolor_no),levels(iris$Species)[2],50-sum(versicolor_no))

pairs(iris, col=iris$Species)

par(mfrow=c(1,3))
plot(iris[sertosa,]$Petal.Width, iris[sertosa,]$Petal.Length, main = 'Sertosa')
plot(iris[virginica,]$Petal.Width, iris[virginica,]$Petal.Length, main = 'Virgnica')
plot(iris[versicolor,]$Petal.Width, iris[versicolor,]$Petal.Length, main = 'Versicolor')
