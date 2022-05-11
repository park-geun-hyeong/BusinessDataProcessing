#1 for 구문과 if ()를 이용하여 소수(prime number)는 1과 자기 자신 외에는 나누어 떨어지지 않는 수를 말한다. 2~1000 사이의 소수를 출력하는 R 코드를 작성하시오
prime = c()
for(i in 2 :1000) {
  for(j in 2:i) {
    if(i%%j==0){
      break}
  }
  if(j==i) {
    prime = c(prime, i)
  }
}
prime


#2 R에서 제공하는 Orange 데이터셋에을 이용하여
#(1) Orange 데이터셋의 앞쪽 일부 데이터만 출력하시오.
head(Orange)

#(2) 나무 연령(age)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
age <- Orange$age
mean(age)
median(age)
mean(age, trim =0.15)
sd(age)

#(3) 나무 연령(age)에 대해 히스토그램을 작성하시오.
hist(age, main="나무연령 histogram", xlab='나무연령', ylab="빈도수", border="blue",col="green", las = 1)

#(4) 나무 연령(age)에 대해 상자그림을 작성하되 그룹(Tree)을 구분하여 작성하시오.
boxplot(age ~ Tree, data=Orange, main="Age per Tree")


#3 다음은 2014년 4분기부터 2017년 3분기까지 남녀 경제활동참가율을 나타낸 통계자료이다. 
#연도를 x축으로 하고 남녀를 각각 다른 선과 색으로 표시하는 그래프를 작성하시오
#(2014년 4분기는 20144, 2015년 1분기는 20151과 같은 형식으로 입력).

years<-c(20144, 20151, 20152, 20153, 20154, 20161, 20162, 20163, 20164, 20171, 20172, 20173)
man<-c(73.9, 73.1, 74.4, 74.2, 73.5, 73.0, 74.2, 74.5, 73.8, 73.1, 74.5, 74.2)
woman<-c(51.4, 50.5, 52.4, 52.4, 51.9, 50.9, 52.6, 52.7, 52.2, 51.5, 53.2, 53.1)

plot(years, man, main="남녀 경제활동참가율", type='b',  ylim=c(min(woman), max(man)), lty = 2, lwd = 5,col="red", xlab="분기", ylab="참가율")
lines(years, woman, type='b',col='blue',lty = 2, lwd = 5)

#4 R에서 제공하는 trees 데이터셋을 이용하여 

#(1) 나무의 지름(Girth)과 높이(Height)에 대해 산점도와 상관계수를 보이시오.
girth<-trees$Girth
height<-trees$Height

plot(Height~Girth, data=trees)
cor(girth, height)

#(2) trees 데이터셋에 존재하는 3개 변수 간의 산점도와 상관계수를 보이시오.
cor(trees[,1:3])
target<-trees[,c("Girth","Height","Volume")]
pairs(target, main="tree multi plot")


