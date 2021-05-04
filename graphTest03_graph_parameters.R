# plot = 최소한의 그래프 생성해줌 

# 제목과 축
# 심볼과 선
# 그래프 유형
# 색상
# 크기
# 글꼴과 글씨체 

head(faithful)
str(faithful)

plot(faithful)

?par # 그래프 인수 설명서 


# 제목과 축 

plot(faithful,
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     las=1, # las = 눈금 텍스트 방향 설정 0~3
     bty='n') # bty: 테두리 설정. o, n, l, ]


# 심볼과 선 
## 심볼옵션 = pch 인수 = 0~25까지 정수에 해당하는 심볼마크. 디폴트 = 1 (속이 빈 원)
### col = 윤곽선 컬러, bg = 칠하기

plot(faithful, pch=3)
plot(faithful, pch=8)
plot(faithful, pch=19, col='green3')
plot(faithful, pch=21, col='dimgray', bg='red')

## 선 옵션 = lty인수. 0~6, col인수 가능.

str(LakeHuron)
plot(LakeHuron)
plot(LakeHuron, lty="solid")
plot(LakeHuron, lty="dashed")
plot(LakeHuron, lty="dotted")
plot(LakeHuron, lty="dotdash")
plot(LakeHuron, lty="longdash")
plot(LakeHuron, lty="twodash", col='red')


#그래프 유형 
## plot에 명시적으로 그래프 유형을 지정정

str(pressure)
plot(pressure)
plot(pressure, type="p") # 산점도, 디폴트
plot(pressure, type="l") # 선
?plot
plot(pressure, type="b")
plot(pressure, type="o")
plot(pressure, type="h")
plot(pressure, type="s")
plot(pressure, type="n") # 빈 틀


## 고수준 함수로 틀만들고, 저수준 함수로 그린다
x <- 1:10
y1 <- exp(1:10)
y2 <- exp(10:1)
plot(x, y1, type="n")
lines(x, y1, type="o", pch=21, col='red')
lines(x, y2, type="o", pch=22, col='blue')


## 산점도 '뒤'에 grid 추가하기 (빈틀 > 격자선 > 점찍기)
plot(faithful, type="n")
grid() # 격자선
points(faithful, pch=19, col="blue") # 산점도


# 색상 지정
colors() # 사용가능한 색상 출력, 구글에 colors in r 검색
palette() # 1검 2붉 3초 4파 5사 6마 7노 8회 << col인수에 미리 정해진 인덱스 가능
palette((rainbow(6)))
palette() # 팔레트 커스텀지정
palette("default") # 되돌아가기
palette()

# col = "white" #FFFFFF, rgb(1, 1, 1), col=hsv(0, 0, 1) 이런식으로도 ok

n <- 12
pie(rep(1, n), col=1:n)

rainbow()
heat.colors()
terrain.colors()
topo.colors()
cm.colors()
gray()

pie(rep(1, n), col=rainbow(n))
pie(rep(1, n), col=heat.colors(n))
pie(rep(1, n), col=terrain.colors(n))
pie(rep(1, n), col=topo.colors(n))
pie(rep(1, n), col=cm.colors(n))
pie(rep(1, n), col=gray(level = seq(0, 1, length=n)))

pie(rep(1, n), col=rainbow(n, alpha = seq(0, 1, length=n)))

library(RColorBrewer) # 색상팔레트 제공
?RColorBrewer
display.brewer.all() # 색상 확인
display.brewer.pal(3, "Blues") # 지정한 팔레트의 지정한 개수만큼 출력

n <- 9
pie(rep(1,n), col=brewer.pal(n, "Blues"))
pie(rep(1,n), col=brewer.pal(n, "Greens"))
pie(rep(1,n), col=brewer.pal(n, "BuGn"))
pie(rep(1,n), col=brewer.pal(n, "GnBu"))



plot(faithful, pch=19, col="tomato",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     las=1, # las = 눈금 텍스트 방향 설정 0~3
     bty='n', # bty: 테두리 설정. o, n, l, ]
     col.main="navy",
     col.sub="purple",
     col.lab="royalblue",
     col.axis="brown") 


# 크기설정

k <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))

plot(k, y, pch=19, cex=k, # 포인트에 대한 스케일값 지정
     main="effect of cex on symbol and text size")
text(x=k, y+0.2, labels = x, cex=x) # text의 x에 준 인수 k를 출력

plot(k, y, pch=19, cex=k, # 포인트에 대한 스케일값 지정
     main="effect of cex on symbol and text size",
     cex.main=1.5, # 제목
     cex.lab=1.0, # 축이름
     cex.axis=0.75) # 축레이블

## 선의 두께

plot(LakeHuron, lwd=1)
plot(LakeHuron, lwd=2)


# 글꼴과 글씨체
# family인수

windowsFonts() # 윈도우 환경 글꼴

plot(faithful, pch=19, col="tomato",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="sans") 

windowsFonts(
        A=windowsFont("Arial Black"),
        B=windowsFont("Book Antiqua"),
        c=windowsFont("Calisto MT")
)


plot(faithful, pch=19, col="tomato",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="C") 

plot(faithful, pch=19, col="cornflowerblue",
     main = "my main title",
     sub = "my sub title",
     xlab = "x축",
     ylab = "y축",
     family="serif",
     font.main=4, font.sub=1,
     font.lab=3, font.axis=2) 

























