# 2022.05.04

# while 구문 사용하여 8단 생성
i<-1
while(i<=9){
  cat(8,"X",i,"=",8*i,"\n")
  i<-i+1
}

# break, next
result <-0
for(i in 1:10){
  if(i %% 2 ==0) next
    
  print(i)
  result <- result + i;
}
result

result <-0
for(i in 1:10){
  if(i > 5) break
  result <- result + i
}
result 


# apply(lapply, sapply, tapply, mapply)

apply(iris[, 1:4],2, mean)
lapply(iris[,1:4], mean)
mapply(mean, iris[,1:4])
sapply(iris[,1:4], mean)
tapply(1:10, rep(1,10), sum)
tapply(1:10, c(1,1,1,1,2,2,2,3,3,3), sum)

# which

score<-c(61,23,23,22,54, 66, 92,67,34)
which(score>60)
which(score == 92)

which.max(score)
which.min(score)


a<- which(score<=60)
score[a] <- 77
score

score[which(score>=80)]

# plot
fav<-c(4,2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
table(fav)
ds<-table(fav)
colort<-c("pink",'red','blue','green')
names(ds)<-colort
barplot(ds, main ="Favorite color", col = colort)
pie(ds, main ="Favorite color", col = colort)







