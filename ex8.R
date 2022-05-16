# 2022.05.16

# <결측치 처리>
x<-iris
x[1,2]<-NA; x[1,3]<-NA
x[2,3]<-NA; x[3,4]<-NA
head(x)

#열 별 결측치 개수 확인
colSums(is.na(x))

for(i in 1:ncol(x)){
  cat(colnames(x)[i], "\t", sum(is.na(x[,i])), "\n")
}

#행 별 결측치 개수 확인
rowSums(is.na(x))
sum(rowSums(is.na(x))>0) # 결측치가 있는 행의 개수 확인

complete<-complete.cases(x) # NA를 포함하지 않는 완벽한 행의 bool 출력
x[complete, ] # 결측치가 속하지 않는 행들 출력
x[!complete, ] # 결측치가 포함된 행들 출력

# <특이값(outlier)>
st<-data.frame(state.x77)
str(st)
boxplot(st$Income)
outlier<-boxplot.stats(st$Income)$out # 결측치 찾아보기

# 특이값을 제거하는 과정
# 1. 이상치를 NA로 변환
# 2. NA를 포함한 행을 제거

st$Income[st$Income %in% outlier] <-NA # %in%는 == 과 같다.
remove_outlier <- st[complete.cases(st),]

# <데이터 정렬(sorting)>
v1=c(1,7,6,8,4,2,3)
order(v1) # 정렬 인덱스 출력(argsort)
sort(v1) # 값 자체를 정렬
sort(v1, decreasing = TRUE) # 내림차순 출력
rank(v1) # 현재 값자체의 정렬 인덱스 출력

order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),] #Sepal.Length 오름차순으로 data.frame 정렬
iris[order(iris$Sepal.Length, decreasing = TRUE),] #Sepal.Length 내림차순으로 data.frame 정렬

# 정렬 기준이 2개일떼 때 
# Species로 내림차순 정렬, 같은 품종 내에서는 Petal.Length기준으로 내림차순 정렬(정렬 기준이 같을 경우)
iris[order(iris$Species, decreasing = TRUE, iris$Petal.Length),]

# Species로 내림차순 정렬, 같은 품종 내에서는 Petal.Length기준으로 오름차순 정렬(정렬 기준이 다를 경우)
iris[order(iris$Species, -iris$Petal.Length, decreasing = TRUE),] #매개변수 입력시 - 붙혀주기

# <데이터 분리와 선택>
subset(iris, iris$Species == 'setosa')
subset(iris, iris$Sepal.Length>7.5)
subset(iris, iris$Sepal.Length>7.5 & iris$Petal.Length > 6.5, select=c(Petal.Length, Petal.Width))

sp<-split(iris, iris$Species) # 기준에 따라서 list화 되어서 나누어진다.
sp
summary(sp)

# <데이터 샘플링과 조합>
# 복원추출, 비복원추출

# seed값 고정
seed<-42

#100개의 숫자 중 10개를 임으로 추출하는 비복원추출 방식의 코드 작성
sample(1:100, size= 10, replace= FALSE) # 비복원 replace = FALSE, 복원 replace = TRUE

set.seed(seed)
sample(1:100, size= 10)

set.seed(seed)
sample(1:100, size= 10)

set.seed(seed)
sample(1:100, size= 10)

set.seed(seed)
sample(1:100, size= 10)

# combination
combn(1:5, 3)
combn(1:5, 3, simplify=FALSE)

# <데이터 집계와 병합>
aggregate(iris[,-5], by=list(Secies=iris$Species), FUN=mean) # 각 품종별로 나머지 기준열들의 평균 출력
aggregate(iris[,-5], by=list(Secies=iris$Species), FUN=sd) # 각 품종별로 나머지 기준열들의 표준편차 출력

# 기준이 2개 있을 때
aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), FUN=max) 


