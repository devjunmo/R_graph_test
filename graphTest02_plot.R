# plot 함수

str(cars)

plot(cars$speed, cars$dist) # 두 연속형 자료 벡터 줄때 
plot(cars)

str(ToothGrowth)
plot(ToothGrowth$supp, ToothGrowth$len) # 명목을 x, 연속을 y

str(iris)
plot(iris[, 1:4]) # 연속형 데이터만 4개
plot(iris) # 3개이상일때 벡터랑 뉴메릭이랑 섞여있으면 이상하게 뜸 

str(nhtemp) # 시계열 데이터 
plot(nhtemp)

str(UCBAdmissions) # 테이블 형식 데이터
UCBAdmissions
plot(UCBAdmissions)

str(faithful)
faithful.lm <- lm(waiting ~ eruptions, data=faithful)
class(faithful.lm)

plot(faithful.lm) # 진단도표












































