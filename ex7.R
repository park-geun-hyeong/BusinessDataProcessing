# 2022.05.09 

#var, std, diff, min, max
wt<-mtcars$wt
var(wt)
diff(wt)

# histogram(barplot과의 차이 기억해두기기)
cars # 속도와 제동거리
dist <- cars[,2] # 제동거리 정보 뽑아오기기
hist(dist, main="제동거리 histogram", xlab='제동거리', ylab="빈도수", border="blue",col="green", las = 1, breaks=5)

# boxplot
mydata<-c(60,63,61,63,67,58,78,120)
boxplot(mydata)
boxplot.stats(mydata)

boxplot(Petal.Length ~ Species, data=iris, main="Petal Length per Speciese") # y축 ~ group

# par(subplots)
par(mfrow=c(1,3)) # 1행 3열로 도화지 나눠주기
barplot(table(mtcars$cyl), main = "실린더의 수", col = 'red', xlab = "cyl", ylab='num')
barplot(table(mtcars$gear), main = "기어 수", col = 'green', xlab = "gear", ylab='num')
barplot(table(mtcars$carb), main = "carb의 수", col = 'blue', xlab = "carb", ylab='num')

par(mfrow=c(1,1)) # 도화지 원상복귀 시키기기

# plot(scatter)
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt,mpg,main="중량-연비 그래프", xlab="중량", ylab="연비비", col='red', pch=19) #pch번호에 따른 plot 모양변화

# pairs(다중 변수 사용)
target<-mtcars[,c("mpg","disp","drat","wt")]
str(target)
head(target)
pairs(target, main ="Multi Plots")

#상관분석
iris.2<-iris[,3:4]
point<-as.numeric(iris$Species) # from Factor to Numeric
color <-c("red", "green", "blue")
plot(iris.2, main ="iris plot", pch=c(point), col=color[point]) 

#상관분석(선형관계확인)
beers<-c(5,2,9,8,3,7,3,5,3,5)
bal<-c(0.1,0.03,0.19,0.12,0.04,0.0095,0.06,0.07,0.03,0.05)
tbl<-data.frame(beers, bal)
tbl

plot(bal~beers, data=tbl)
res<-lm(bal~beers, data=tbl)
abline(res) # 맥주양과 혈중 알코올 농도는 비례함을 선형적으로 시각화 할 수 있다.
cor(beers,bal) # 상관계수 구하기(일반적으로 0.5이상이라면 상관정도가 높다.)
cor(iris[,1:4])

#plot - type parameter
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, late, main = "지각생 통계", type='b')
plot(month, late, main = "지각생 통계", type='l')
plot(month, late, main = "지각생 통계", type='s')
plot(month, late, main = "지각생 통계", type='o')

plot(month, late, main = "지각생 통계", type='b', lty = 3, lwd = 5, xlab= "month", ylab="late cnt")
lines(month, late2, type = 'b', col="blue",lty = 3, lwd = 5)


# package install (mlbench - 보스턴 집값 데이터셋 저장된 패키지) 
install.packages("mlbench") # 패키지 설치 후
library(mlbench) # library설정 꼭 해주기 
data("BostonHousing") # 패키지에서 원하는 데이터셋 불러오기기
str(BostonHousing)







