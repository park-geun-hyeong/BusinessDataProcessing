#2022.05.23

# bubble chart
# symbols()와 text()의 조합으로 생성성

symbols(st$Illiteracy,
        st$Murder, 
        circles = st$Population, 
        inches=0.3, 
        fg='white',
        bg="lightgray",
        lwd=1.5, 
        xlab="rate of Illiteracy", 
        ylab="crime rate", 
        main ="Illiteracy and Crime")


text(st$Illiteracy,
     st$Murder, 
     labels = rownames(st),
     cex = 0.2,
     col='brown')

# Mosic Plot
UCBAdmissions

# 지원자와 합격자의 통계를 남.녀 구분지어서 시각화
mosaicplot(~Gender+Admit, data=UCBAdmissions, color=c("red","blue"), main = "UC Berceley Admission"  )
mosaicplot(~gear+vs,data=mtcars, color=c("yellow",'green'), main = "VS per gear")

# ggplot(geom_ 함수를 계속 추가해주기)
install.packages("ggplot2")
library(ggplot2)

# ggplot barplot
#월(month)과 강우량(rain) 데이터를 입력한 후 ggplot으로 막대그래프 작성하기
month<-c(1,2,3,4,5,6)
rain <-c(55,50,45,50,60,70)
df<-data.frame(month, rain)
ggplot(df, aes(x=month, y=rain)) + geom_bar(stat="identity", width = 0.7, fill="steelblue") + ggtitle("Monthly Precipitation") + theme(plot.title = element_text(size= 10, face ="bold", colour = "green")) + labs(x="month", y="rain")+coord_flip()

# ggplot histogram
ggplot(iris, aes(x=Petal.Length)) + geom_histogram(binwidth=0.5)
ggplot(iris, aes(x=Sepal.Width, fill=Species, color = Species)) + geom_histogram(binwidth =0.5, position="dodge") + theme(legend.position="top")
ggplot(iris, aes(x=Sepal.Width, fill=Species, color = Species)) + geom_histogram(binwidth =0.5, position="stack")
ggplot(iris, aes(x=Sepal.Width, fill=Species, color = Species)) + geom_histogram(binwidth =0.5, position="identity")
ggplot(iris, aes(x=Sepal.Width, fill=Species, color = Species)) + geom_histogram(binwidth =0.5, position="fill")

# ggplot point plot
ggplot(iris, aes(x=Petal.Length, y=Petal.Width,color=Species)) + geom_point(size= 3) + ggtitle("length per width") + theme(plot.title = element_text(size= 15, face ="bold", colour = "steelblue"))

# ggplot boxplot
ggplot(iris, aes(y=Petal.Length, fill=Species)) + geom_boxplot()

# ggplot line 
airmiles
year<-1937:1960
cnt<-as.vector(airmiles)
df<-data.frame(year,cnt)
ggplot(df, aes(x=year, y = cnt)) + geom_line(col='red')

# SOLVE
# 미국 50개 주에 대해 각각의 주들이 지역구분별로 묶인 트리맵을 작성하시오
# 또한 타일의 면적은 Population, 타일 색은 Income으로 나타내고, 각각의 타일에는 주의 이름을 표시하기오
# 마지막으로 이 트리맵에서 관찰할 수 있는 것이 무엇인지 설명하시오

library(treemap)
us<-data.frame(state.x77, state.division)
us<-data.frame(us, state=rownames(us))
us

treemap(us, 
        index = c("state.division","state"), 
        vSize = "Population", 
        vColor = "Income", 
        type="value", 
        bg.labels = "yellow", 
        title = "Income")


# SOLVE
mosaicplot(HairEyeColor, color=TRUE)

