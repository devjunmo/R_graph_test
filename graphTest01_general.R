str(faithful)

plot(faithful) # 제네릭 고수준 그래프 함수

eruptions.long <- faithful[faithful$eruptions > 3, ]
eruptions.long

points(eruptions.long, col="red", pch=19) # 점에 효과를 주는 저수준 그래프 함수 
                                          # 반드시 기존에 그래프를 생성해놔야 함

dev.off() # 그래프 삭제
points(eruptions.long, col="red", pch=19) # err

faithful.lm.model <- lm(waiting ~ eruptions, faithful)


plot(faithful)
points(eruptions.long, col="red", pch=19) 

lines(x = faithful$eruptions, y=fitted(faithful.lm.model), # 모델에 피팅 
      col='blue') # 저수준 그래프함수를 응용하여 회귀선 그어주기 

abline(v=3, col="purple")# 수평, 수직선등 그어주는 저수준 그래프 함수 
abline(h=mean(faithful$waiting), col="green")
abline(faithful.lm.model, col="blue") # 얘로도 회귀선 응용 가능



































































