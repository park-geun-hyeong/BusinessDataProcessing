# 피보나치 수열

FIBO <- c(0,1)

for(i in 1:40){
  if(i<3){
    cat(FIBO[i], " ")
  }else{
    FIBO[i] = FIBO[i-1]+FIBO[i-2]
    cat(FIBO[i], " ")  
  }
}

as.integer(2.5)
# 소수 구하기
prime<-c()
for(i in 2:1000){
  flag = 0
  for(j in 1:as.integer(i/2)){
    if(j == 1){
      next
    }
    if(i%%j == 0){
      flag = 1
      break
    }
  }
  if(flag == 0){
    prime<-c(prime, i)
    cat(i, " ")
  }
}
