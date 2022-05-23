#2022.05.18

# <merges>
x<-data.frame(name=c("a","b","c"), math=c(90,80,40))
y<-data.frame(name=c("a","b","d"), korean=c(75,60,90))
merge(x,y, by =c("name"), all.x = T)
merge(x,y, by =c("name"), all.y = T)
merge(x,y, by =c("name"), all = T)

y<-data.frame(sname=c("a","b","d"), korean=c(75,60,90))
merge(x,z, by.x=c("name"), by.y=c("sname"))

ds<-state.x77
ds[2,3]<-NA; ds[3,1]<-NA; ds[2,4]<-NA;ds[4,3]<-NA;
head(ds)

# 열 별 결측값 개수
colSums(is.na(ds))

# 결측값이 포함된 행들의 데이터 출력
ds[!complete.cases(ds),]

# 결측값이 포함된 행의 개수
sum(rowSums(is.na(ds))>0)

# 결측값이 포함된 행들을 제외하고 새로운 데이터셋을 만들어 보시오
new<-ds[complete.cases(ds),]
new

# 특이값이 있는 변수(열)은 무엇인지 상자그림을 그려 확인하시오
boxplot(new)
boxplot.stats(new)$out

# <Visualization>
install.packages("treemap")
library(treemap)
data("GNI2014")
str(GNI2014)

treemap(GNI2014, 
        index = c("continent", "country"), 
        vSize = "population", 
        vColor = "GNI", 
        type="value", s
        bg.labels = "yellow", 
        title = "World's GNI")







