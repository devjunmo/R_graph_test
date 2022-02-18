

library(ggplot2)

head(mtcars)

ggplot(data = mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  geom_smooth() +
  labs(title = 'my title',
       x='weight',
       y='fuel')

?geom_point # Aesthetics 인수 = geom 함수의 외형 변경 옵션
            # (required aesthetics are in bold) <- aes에서 지정하면 상속받음
# x
# y
# alpha
# colour
# fill
# group
# shape -> par의 pch 참조, 점 내부 채우는 옵션은 bg로 색채움, 겉 테두리는 stroke
# size
# stroke
?par # ggplot은 여기에 있는 옵션들 차용함
colors() # 사용 가능한 컬러 명 출력, 컬러명 구글링

?geom_smooth # method: 적합선 그리기 / 회귀분석때 lm / linetype: par lty 참조. linetype or lty 둘다 써도 ok

?geom_text
rownames(mtcars) # 자동차 명

ggplot(data = mtcars, aes(x=wt, y=mpg)) + 
  geom_point(shape=21, colour='violetred3', size=2, stroke=2, bg='blue') +
  geom_smooth(method = 'lm', color='red', linetype=3, size=2) +
  geom_text(label=rownames(mtcars), hjust=1, vjust=0, nudge_y = 0.7, size=3) +
  labs(title = 'my title',
       x='weight',
       y='fuel')


library(car)
str(Salaries)

# 직급별 연봉

head(Salaries)

?geom_boxplot # notchwidth = 신뢰구간이 그룹간 겹치는지 확인(홈이 겹치지 않는것은 통계적으로 차이가 있는것을 보여줌)
?geom_rug

ggplot(Salaries, aes(x=rank, y=salary)) +
  geom_boxplot(fill='salmon', color='dimgray', notch = T) +
  geom_point(position = 'jitter', color='royalblue', alpha=0.5) +
  geom_rug(sides='bl', color='dimgray')



library(lattice)

head(singer)
?geom_violin

ggplot(singer, aes(x=voice.part, y=height)) +
  geom_violin(fill='honeydew2') +
  geom_boxplot(fill='lightgreen', width=0.2)


































