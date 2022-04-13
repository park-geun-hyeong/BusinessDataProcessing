#2022-04-11
# vector(list)

a<-10
a<-c(1,2,3)
2*a-5
b<-c('a','b','c')
c<-c(TRUE,FALSE,TRUE)

d<-c(1,2,3,'a','b',TRUE)
d[-1] # 제외하고 출력
d[-c(3:5)]
d[3] <- 8
d[c(1,5)] <- c(10,20)
d

# seq
e <- seq(1,101,by=2)
f <- seq(0.1,1,by=0.1)

# rep
g<-rep('a',10)
h<-rep(1:5,times =3)
i<-rep(1:5, each = 3)

z<-rep(seq(1,5,2),4)

#names
score <- c(90,85,80)
names(score)<-c("john","Tom","Jane")

GNP <- c(2890, 2450, 960)
names(GNP)<-c("Korea", "Japan", "Nepal")
GNP

j <- 1:100
k<-c(1:3,50:100)

x<-c(1,2,3)
y<-c(4,5,6)
x+y
x*y

d<-c(10,2,8,4,20)
sum(d)
mean(d)
median(d)
max(d)
min(d)
length(d)
mean(d) == sum(d)/length(d)
sort(d,decreasing = TRUE)
sort(d)


d<-1:9
d[d>=5]







