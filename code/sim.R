f1_a <- rnorm(50, 1)
f1_o <- rnorm(50, 2)
f1_u <- rnorm(50, 3)
dur_a <- rnorm(50, 1)
dur_o <- rnorm(50, 2)
dur_u <- rnorm(50, 3)

dat <- tibble(
  f1 = c(f1_a, f1_o, f1_u),
  dur = c(dur_a, dur_o, dur_u),
  vow = rep(c("a", "o", "u"), each = 50)
)

dat %>%
  ggplot(aes(f1, dur)) +
  geom_point()

al <- lm(dur ~ f1 + vow, data = dat)
summary(al)
