

str(Titanic)
class <- margin.table(Titanic, margin = 1)
class

barplot(class,
        main="simple bar chart")

survival.by.class <- margin.table(Titanic, margin = c(4, 1))
survival.by.class

barplot(survival.by.class,
        main = "stacked bar chart",
        beside = T)

# 세련된 막대도표 생성하기

# 01. 막대 이름 주기


barplot(survival.by.class,
        main = "stacked bar chart",
        beside = T,
        names.arg = c('1', '2', '3', '4'),
        cex.names = 0.75, # name 크기 조정
        ylab = '생존자 수',
        las = 1,
        ylim = c(0, 1000),
        col = c('red', 'green'),
        legend=T) 

# 별도 레전드를 추가하려면 레전드 옵션을 지우고 레전드 함수 사용

barplot(survival.by.class,
        main = "stacked bar chart",
        beside = T,
        names.arg = c('1', '2', '3', '4'),
        cex.names = 0.75, # name 크기 조정
        ylab = '생존자 수',
        las = 1,
        ylim = c(0, 1000),
        col = c('red', 'green'))

legend(x=1, y=900, # 좌표 주기
       legend = c("Dead", "Alive"),
       fill=c('red', 'green'), # pch(심볼), lty(선), fill(면)
       title = 'status') 

survival.by.class

suv.prop <- prop.table(survival.by.class,
                       margin = 2) # 열의 비율 계산

suv.prop

barplot(suv.prop, col=c('maroon', 'skyblue'),
        xlab='class',
        ylab='ration of survivors',
        las=1,
        main='survivors by class ratio',
        legend.text = T)


library(vcd)
spine(t(suv.prop), gp=gpar(fill=c("mistyrose", 'lightblue')),
      main='spine plot')


# 집단별 평균을 막대도표로 플로팅 해보기

head(chickwts)
str(chickwts)
h <- tapply(chickwts$weight, chickwts$feed, mean)
h

barplot(h, ylim=c(0, 400), las=3)


# 막대도표 꾸미기

str(UCBAdmissions)

admission.by.dept <- margin.table(UCBAdmissions, c(1, 3))
admission.by.dept

barplot(admission.by.dept,
        density = 15,
        angle = 135)

barplot(admission.by.dept,
        border = 'red',
        col = c('lightblue', 'mistyrose'))

barplot(admission.by.dept, beside = T,
        space = c(0.3, 2.0), # 막대간, 집단간 간격
        col = c('lightblue', 'mistyrose')) 

barplot(admission.by.dept, axes = F, horiz = T)
















