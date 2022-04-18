# 2022-04-18 Sample dataset

# Iris
class(iris)
is.data.frame(iris)
rownames(iris)
colnames(iris)

head(iris)
tail(iris)

iris[,c(1:2)]

iris[,c(1,3,5)]
iris[,c("Sepal.Length",'Petal.Length','Species')]

iris[1:5,1:3]
str(iris)

#unique
unique(iris[,5])

# table
table(iris[,5])

#Calculation 
colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

z<-matrix(1:20, 4,5)
z
t(z)

#Subset - pandas iloc, loc
subset(iris, Sepal.Length > 5 & Sepal.Width > 4)

# state.x77
str(state.x77)
class(state.x77)
is.matrix(state.x77)

df <- data.frame(state.x77)
oridinal <- as.matrix(df)
class(df)
class(oridinal)


#1 state.x77데이터를 st라는 변수로 dataframe으로 저장 
st <- data.frame(state.x77)

#2 st의 내용 출력
st

#3 st의 열이름 출력
colnames(st)

#4 st의 행 이름 출력
rownames(st)

#5 st의 행의개수와 열의 개수 출력
length(st[1,])
length(st[,1])

nrow(st)
ncol(st)
dim(st)

#6 st의 요약정보 출력
str(st)

#7 st의 행별 합계와 행별 평균 출력 
rowSums(st)
rowMeans(st)

#8 st의 열별 합계와 열별 평균 출력
colSums(st)
colMeans(st)

#9  Florida주의 모든 정보 출력
st["Florida",]

#10 50개 주의 수입 정보만 출력
st[,"Income"]

#11 Texas주의 면적을 출력
st['Texas','Area']

#12 Ohio 주의 인구와 수입 출력
st['Ohio','Population']

#13 인구가 5000명 이상인 주의 데이터만 출력 
subset(st, Population>=5000)

#14 수입이 4500이상인 주의 인구, 수입 면적을 출력 
subset(st, Income>=4500)[, c("Population", "Income", "Area")]

#15 수입이 4500 이상인 주는 몇개인지 출력
nrow(subset(st, Income>=4500))

#16 전체면적이 100000이상이고 결빙지수가 120이상인 주의 정보를 출력
subset(st, Area>=100000 & Frost>=120)

#17 인구가 2000 미만이고 범죄율이 12 미만인 주의 정보 출력
subset(st, Population<2000 & Murder<12)

#18 문맹률이 2.0이상인 주의 평균수입은 얼마인지 출력
mean(subset(st, Illiteracy>=2)[,'Income'])
colMeans(subset(st, Illiteracy>=2))['Income']

#19 문맹률이 2.0미만인 주와 2.0이상인 주의 평균 수입의 차이를 출력 -> 중간고사 
abs(mean(subset(st, Illiteracy<2)[,'Income']) - mean(subset(st, Illiteracy>=2)[,'Income']))


#20 기대수명이 가장 높은 주는 어디인지 출력 -> 중간고사 
rownames(subset(st, Life.Exp == max(Life.Exp)))

#21 Pennsylvania 주보다 수입이 높은 주를 출력
df<-data.frame(rownames(subset(st, Income > st["Pennsylvania","Income"])))
colnames(df) <- "Country"
df


