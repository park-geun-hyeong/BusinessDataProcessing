# 2022.05.02 반복문, 조건문문


# 조건문(if)
my <- 'A'
my

if(my == "B"){
  bonus<-100
}else{
  bonus<-200
}

print(bonus)

score<-70
score

if(score > 90){
  grade<-"A"
} else if(score>80){
  grade<-"B"
} else if(score>70){
  grade<-"C"
} else{
  grade<-"F"
}

print(grade)


# 반복문( for, while)

for(i in 1:5){
  print("*")
}

for(i in 6:10){
  print(i)
}

# 구구단 출력(이중 for문)
for(i in 2:9){
  cat(i,"단","\n")
  for(j in 1:9){
    cat(i,"X",j,"=",i*j,"\n")
  }
  cat("\n")
}

# 짝수 출력
for(i in 1:20){
  if(i %% 2 == 0){
    print(i)
  }
}

# 1-100까지의 수 더하기기
sum<-0
for(i in 1:100){
  sum <- sum + i
}
sum

#iris
iris
mydata<-c()
for(i in 1:150){
  
  if(iris$Sepal.Length[i] <= 1.6){
    mydata[i]<-'L' 
  }
  else if(iris$Sepal.Length[i] >= 5.1){
    mydata[i]<-'H'
  }else{
    mydata[i]<-'M'
  }
}

print(mydata)

# Solve

#1 1~100사이의 정수 중에서 3의 배수의 합과 개수를 구하시오
sum<-0
idx<-0
for(i in 1:100){
  if(i%%3==0){
    sum<- sum+i 
    idx<- idx+1
  }
}
cat(sum, idx)


#2 101~200 까지의 숫자 중에서 3과 4의 공배소를 출력하시오

for(i in 101:200){
  if(i %% 3 == 0 & i %% 4 == 0){
    print(i)
  }
}

#3 24의 약수를 구하여라
for(i in 1:24){
  if(24%%i == 0){
    print(i)
  }
}

#4 for 문을 이용하여 9단을 출력하시오
for(i in 1:9){
  cat(9,"X", i, "=",9*i,"\n")
}



