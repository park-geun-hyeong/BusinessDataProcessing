# 2022-04-13

# vector -> 같은 종류의 데이터 나열
d<-1:9
d>5
d[d>5]
sum(d[d>5])

a <- d[d>5 & d<8] 
a

# list -> 다른 종류의 데이터 나열 
my_info <- list(name ="park", age = 25,  status = TRUE, score = c(90,80,70,60))
my_info['status']
my_info[3]


# Factor -문자가 저장된 벡터(""없음, level 표시)
b1<-c('A','B','AB','O','A')
b2<-factor(b1)
b2[6] <- 'B'
b2[7] <- 'C' # level에 없는 값이 들어오니까 NA로 표시
b2
as.integer(b2)


# Matrix
matrix(1:20, 4,5, byrow = FALSE) # default = FALSE
m<-matrix(1:20, 4,5, byrow = TRUE)
m
m[1,3]
m[1,]
m[,1]

m[1:3, 2]
m[4,]
m[,c(1,4)]

x<-1:4
y<-5:8
z<-matrix(1:20, 4,5)

m1<-rbind(x,y)
m2<-cbind(x,y)
m1
m2

John <- c(90,85,90)
Tom <- c(85,96,80)
Mark <- c(69,49,70)
Jane <- c(78,95,60)

score <- matrix(c(90,85,90,
                  85,96,80,
                  69,49,70,
                  78,95,60),  4,3, byrow=TRUE)


score
rownames(score) <- c("John", 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English','Math','Science')
score




# DataFrame
score <- matrix(c(90,85,90,
                  85,96,80,
                  69,49,70,
                  78,95,60),  4,3, byrow=TRUE)




