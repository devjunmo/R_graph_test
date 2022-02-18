library(ggplot2)
library(car)

str(Salaries)


# 스케일 함수 = 위치, 색상, 채우기, 크기, 도형등의 그래프 요소에 대한 변경
# scale_<aesthetic>_<name/data type>


# scale_x_discrete()
# scale_x_continuous()
# scale_y_discrete()
# scale_y_continuous()


ggplot(Salaries, aes(x=rank, y=salary, fill=sex)) +
  geom_boxplot() +
  scale_x_discrete(breaks=c('AsstProf', 'AssocProf', 'Prof'),
                   labels=c('조교수', '부교수', '정교수')) + # 이산형 변수 x 레이블
  scale_y_continuous(breaks = c(50000, 100000, 150000, 200000),
                     labels = c('$50k', '$100k', '$150k', '$200k')) + # 연속형 변수 y레이블
  # labs(fill="Gender") + # 범례 제목 변경 (aes에서 지정할때 fill로 지정했어서 fill로 지정)
  scale_fill_discrete(name = 'Gender') + # 위와 동일한 효과, fill로 지정되어 있어서 scale_fill 함수 사용
  theme(legend.position = c(0.15, 0.85)) # top, bottom, left, right, none, c(0.xx, 0.yy)




head(mtcars)

ggplot(mtcars, aes(x=wt, y=mpg, shape=factor(cyl), color=factor(cyl))) +
  geom_point() + 
  # labs(shape='실린더', color='실린더') + # 둘 다 써줘야 함
  scale_shape_discrete(name='실린더') +
  scale_color_discrete(name='실린더') # 둘다 써줘야함



ggplot(mtcars, aes(x=wt, y=mpg, size=disp)) + 
  geom_point(shape=21, color='black', fill='wheat') +
  # labs(size='Engine\nDisplacement')
  scale_size_continuous(name = 'ED')



head(Salaries)

ggplot(Salaries, aes(x=rank, fill=sex)) +
  geom_bar() +
  scale_fill_manual(values = c('tomato', 'cornflowerblue')) # 색깔 지정


ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank)) + 
  geom_point() +
  scale_color_manual(values=c('orange', 'violetred', 'steelblue'))



?RColorBrewer # 범주형 변수 컬러 할당, palette 옵션 설명

ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank)) + 
  geom_point(size=2) +
  scale_color_brewer(palette = 'Accent')



ggplot(mtcars, aes(x=wt, y=mpg, color=disp)) +
  geom_point() +
  scale_color_gradient2() # 연속형 변수의 색상변경



ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=rank)) +
  geom_point(size=2) +
  scale_shape_manual(values = c(5, 22, 12))













