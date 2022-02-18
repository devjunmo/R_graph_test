library(ggplot2)
library(car)

head(Salaries)

ggplot(Salaries, aes(x=salary)) + 
  geom_density()

# 밀도 도표를 세개의 직급별로 그려보기

?geom_density()

## fill: 내부를 설정한 컬럼의 요소별로 채워줌 (그룹핑)
ggplot(Salaries, aes(x=salary, fill=rank)) + 
  geom_density(alpha=0.5)



# 산점도로 박사학위 취득 이후 기간~연봉 관계 나타내보기

ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=sex)) +
  geom_point()



# 하나의 그래프상에 두개의 직급 막대그래프
?geom_bar

ggplot(Salaries, aes(x=rank, fill=sex)) +
  geom_bar(position = 'stack')

ggplot(Salaries, aes(x=rank, fill=sex)) +
  geom_bar(position = 'dodge')

ggplot(Salaries, aes(x=rank, fill=sex)) +
  geom_bar(position = 'fill') +
  labs(y='Proportion')



presummed <- data.frame(Grade=c('A', 'B', 'C'),
                        Freq=c(20, 45, 30)) 

presummed

# ggplot(presummed, aes(x=Grade, y=Freq)) + 
#   geom_bar() # 막대의 높이 (y값)이 지정된 경우 stat='identity' 써줘야 함

ggplot(presummed, aes(x=Grade, y=Freq)) + 
  geom_bar(stat="identity")

ggplot(presummed, aes(x=Grade, y=Freq)) + 
  geom_col() # 기본값이 stat='identity'인 bar 함수




# facet_wrap() # 집단 구분 변수 하나일때 사용
# facet_grid() # 집단 구분 변수가 두개일때 사용

library(lattice)

head(singer)

ggplot(singer, aes(x=height)) +
  geom_histogram() + 
  facet_wrap(~ voice.part, nrow = 4) # height의 count 히스토그램


ggplot(singer, aes(x=height)) +
  geom_density() 


ggplot(singer, aes(x=height, fill=voice.part)) +
  geom_density() +
  facet_wrap(voice.part ~ ., nrow=4) # . = 생략 표시 / y 


# ggplot(singer, aes(x=height, fill=voice.part)) +
#   geom_density() +
#   facet_grid(voice.part ~ .) # . = 생략 표시
# 


ggplot(Salaries, aes(x=yrs.since.phd, y=salary)) +
  geom_point() +
  facet_grid(sex ~ rank)


ggplot(Salaries, aes(x=yrs.since.phd, y=salary, 
                     color=rank,
                     shape=rank)) +
  geom_point() +
  facet_grid(. ~ sex)









