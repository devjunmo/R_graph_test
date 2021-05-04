
# 고수준 함수에서 기본 제공하는 파라미터 말고, 새롭게 정의
# 저수준 함수로 그래프 요소 지정.


# 제목과 축

?par
?title
?axis


str(state.x77)
states <- data.frame(state.x77)
head(states)

attach(states)

old.par <- par(no.readonly = T)
par(mar=c(5, 4, 4, 8) + 0.2)

# 고수준으로 시작하고 
plot(Murder, Life.Exp, pch=20, col="tomato", ylim=c(35, 75),
     yaxt="n", col.axis="darkorchid4",
     cex.axis=0.75, ann=F) # ann = false: 뒤에 text추가할거라서

# 저수준으로 덧칠하고
points(Murder, HS.Grad, pch=22, col="blue", bg="skyblue")

axis(side=2, at=seq(68, 76, 2), labels = seq(68, 76, 2), # 68~76까지 2간격으로
     col.axis="red", cex.axis=0.75, las=2, tck=-0.02)
axis(side=4, at=seq(35, 70, 5), labels = seq(35, 70, 5),
     col.axis="blue", cex.axis=0.75, las=2, tck=-0.02)

mtext(text="High school\nGraduates\n(percent)", # mtext = margin에 text
      side=4, line=3, cex=0.9, las=2, col="tan4")

title(main="murder vs. Life Expectancy vs. High School Grad",
      xlab="mureder (rate per 100,000 population)",
      ylab="Life expectancy (years)",
      col.main="maroon", col.lab="tan4", cex.lab=0.9)

par(old.par)

detach(states)




# 범례

?legend
?plot

str(Orange)
head(Orange)

tree1 <- subset(Orange, Tree==1)
tree2 <- subset(Orange, Tree==2)

xlim <- range(c(tree1$age, tree2$age))
ylim <- range(c(tree1$circumference, tree2$circumference))

plot(tree1$age, tree1$circumference, type="b",
     xlim = xlim, ylim = ylim,
     pch=16, lty=1, col='red',
     main='Growth of orange tree',
     xlab = "Age",
     ylab = 'circumference (mm)')

lines(tree2$age, tree2$circumference, type ='b',
      pch=15, lty=2, col='blue')

legend('topleft', inset = 0.05, # 거시적 위치, inset으로 미시적 간격
       title = 'tree id',
       legend = c('tree 1', 'tree 2'),
       lty = c(1,2), pch = c(16, 15), col = c('red', 'blue'))

## 보조눈금 추가해보기
library(Hmisc)
minor.tick(nx=3, ny=3, tick.ratio = 0.5) # xy축의 보조눈금 수, 주눈금 대비 크기



# 텍스트
# text, mtext

?text
## 폰트는 진하게, 이테릭 이런거고
## family가 글씨체인듯

plot(1:5, 1:5, type = 'n', yaxt='n', ann=F)

text(2, 2, font=1, col='red', cex=1.0, 
     labels='Default text: Sans text with plain (font=1)')
text(3, 3, font=2, col='darkgreen', cex=1.2, family='mono',
     labels='mono text with bold (font=2)')

text(4, 4, font=3, col='blue', cex=1.4, family='serif',
     labels='Serif text with italic (font=3)')

text(4, 5, font=2, col='blue', cex=1.4, family='serif',
     labels='Serif text with bold (font=2)')

text(2, 4, font=3, col='blue', cex=1.4, family='HersheyScript',
     labels='HersheyScript text with italic (font=3, srt=25)',
     srt=25)

mtext(text = 'windows fonts: sans, mono, serif, and hersheyscript',
      side=1, line=1, col="deeppink")

mtext(text = 'windows fonts: sans, mono, serif, and hersheyscript',
      side=1, line=2, col="deeppink")


str(mtcars)
head(mtcars)

attach(mtcars)

plot(wt, mpg, pch=19, col='royalblue',
     main='car mileage vs. car weight',
     xlab='weight (1000 lbs)', ylab = 'mileage(miles per gallon)')


text(wt, mpg, row.names(mtcars), cex=0.5, pos=4, col='red',
     srt=45)
detach(mtcars)









































