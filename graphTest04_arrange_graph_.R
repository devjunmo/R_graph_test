

# 구성: figure region, plot region, 4개의 figure margin(남쪽부터 시계방향 1234)

windows(width = 12, height = 8) # 그래프 창 생성

plot(faithful, pch=19, col="cornflowerblue",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2) 


par("mai") # 인치단위 마진설정
par("mar") # 라인단위 마진설정

old.par <- par(mai=c(1, 0.5, 1, 0.2)) # 이후 생성 그래프 모두 이 마진을 갖음.
                                  # 새로운 마진을 설정하면서, 기존의 마진을 리턴함.
                                  # 이경우 기존 마진은 old.par에 저장됨.

par("mai")
par(old.par)
par("mai")

par("mar")
old.par <- par(mar=c(5, 4, 4, 2) + 0.2)
par("mar")
par(old.par)
par("mar")




# 데이터 범위 계산 = range
# 그래프 영역 설정 = xlim, ylim

x1 <- 1:10
y1 <- log(x1)

x2 <- 1:10
y2 <- sqrt(x2)


plot(x1, y1, type='l', col="red", xlab="X", ylab="Y") # 고수준으로 일단 그리고
lines(x2, y2, lty="dashed", col='blue') # 저수준으로 추가한다.

# 데이터 범위 계산 
range(y1) # 0~2.3
range(y2) # 1~3.1   먼저 그린놈이 더 좁은 범위라서 큰범위가 잘려서 보임

xlim <- range(c(x1, x2))
ylim <- range(c(y1, y2))

xlim # 1 ~ 10
ylim # 0 ~ 3.1

plot(x1, y1, type='l', col="red", xlab="X", ylab="Y",
     xlim=xlim, ylim = ylim) # 고수준으로 일단 그리고
lines(x2, y2, lty="dashed", col='blue') # 저수준으로 추가한다.




# 한 페이지에 여러개의 그래프 그리기 

par("mfrow") # 디폴트 1 1 = 한개 창에 한개 그래프
## 한 페이지에 위에 두개 아래 두개 총 네개 그리게 하려면..

old.par <- par(mfrow=c(2, 2))
par("mfrow") # mfcol로 하면 열을 기준으로 그래프가 차례로 그려짐.

plot(x1, y1, type='l', col="red", xlab="X", ylab="Y",
     xlim=xlim, ylim = ylim) # 고수준으로 일단 그리고

plot(faithful, pch=19, col="cornflowerblue",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2) 

plot(LakeHuron, lty="dashed")

pie(rep(1,n), col=brewer.pal(n, "Greens"))

par(old.par)
par("mfrow")

old.par <- par(mfrow=c(1, 1))




# 다양한 형태로 그래프 배치

old.par <- par(no.readonly = T)

m = matrix(c(1, 1, 4, 2, 3, 4), 2, 3, byrow = T)
# [,1] [,2] [,3]  
# [1,]    1    1    4    각 숫자는 그래프 영역을 나타냄
# [2,]    2    3    4
layout(m)
layout.show(4)

plot(x1, y1, type='l', col="red", xlab="X", ylab="Y",
     xlim=xlim, ylim = ylim) # 고수준으로 일단 그리고

plot(faithful, pch=19, col="cornflowerblue",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2) 

plot(LakeHuron, lty="dashed")

pie(rep(1,n), col=brewer.pal(n, "Greens"))

par(old.par)
par("mfrow")


par(old.par)




m = matrix(c(1, 1, 4, 2, 3, 4), 2, 3, byrow = T)
old.par <- par(no.readonly = T)

layout(m, widths=c(1, 1, 1.5), heights=c(2,1)) # 열의 폭 = 1:1:1.5 / 높이폭: 2:1
layout.show(4)

plot(x1, y1, type='l', col="red", xlab="X", ylab="Y",
     xlim=xlim, ylim = ylim) # 고수준으로 일단 그리고

plot(faithful, pch=19, col="cornflowerblue",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2) 

plot(LakeHuron, lty="dashed")

pie(rep(1,n), col=brewer.pal(n, "Greens"))

par(old.par)



























