# Q2-1

head(colon)
res.reg <- glm(time ~ rx + age + sex, data = colon)
tb.reg <- glmshow.display(res.reg)     # 'jstable 패키지의 glmshow.display' 이용
knitr::kable(tb.reg$table, caption = tb.reg$first.line)

# Q2-2
res.logistic <- glm(status ~ rx + age + sex, data = colon, family = binomial)
tb.logistic <- glmshow.display(res.logistic)   # 'jstable 패키지의 glmshow.display' 이용
knitr::kable(tb.logistic$table, caption = tb.logistic$first.line)

# Q2-3
res.cox <- coxph(Surv(time, status) ~ rx + age + sex, data = colon, model = T)
tb.cox <- cox2.display(res.cox)   # 'jstable 패키지의 cox2.display' 이용
knitr::kable(tb.cox$table, caption = tb.cox$caption)
