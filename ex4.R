# x는 1부터 100까지의 수중에 3의 배수만 포함하고 y는 1부터 100까지의 수중에 4의 배수만 포함하는 벡터를 만들어라
z<-c(1:100)
x<-z[z%%3 == 0]
y<-z[z%%4 == 0]

seq(3,100,3)
seq(4,100,4)


# 교집합 intersect()
# xy의 교집합을 구하고 해당 교집합에 포함된 수를 모두 더한 값을 구하여라.
summation<-sum(intersect(x,y))
summation

# airquality dataset의 바람의 세기가 가장 센 날은 몇월 몇일?
subset(airquality, Wind == max(Wind))[,c("Month","Day")]
subset(airquality, Wind == max(Wind),c("Month","Day"))
airquality[airquality$Wind == max(airquality$Wind), c("Month","Day")]

# missingvalue 개수 찾아보기
table(is.na(airquality))

#기온이 가장 높은 날은 ?
subset(airquality, Temp == max(Temp), c("Month", "Day"))

# 6월에 발생한 가장 강한 바람의 세기는?
max(subset(airquality, Month == 6)[, c("Wind")])
max(airquality[airquality$Month == 6, "Wind"])
