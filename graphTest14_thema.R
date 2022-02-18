

library(ggplot2)
library(car)

head(Salaries)


?theme_gray # 사용 가능한 테마들 여러개 나옴

# 기본 테마 = theme_gray()
ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=rank)) +
  geom_point() +
  facet_grid(. ~ sex) +
  theme_bw()

ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=rank)) +
  geom_point() +
  facet_grid(. ~ sex) +
  theme_light()

ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=rank)) +
  geom_point() +
  facet_grid(. ~ sex) +
  theme_dark()

ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, shape=rank)) +
  geom_point() +
  facet_grid(. ~ sex) +
  theme_minimal()



# 사용자 지정 테마 theme()
# theme(<theme attribute>=element_<element> (<aesthetic>))
?theme

ggplot(Salaries, aes(x=rank, y=salary, fill=sex)) +
  geom_boxplot() +
  labs(title='salary by rank and sex',
       x='rank', y='salary') +
  theme(plot.title = element_text(face='bold.italic',
                                  size=14,
                                  color='brown'))













































