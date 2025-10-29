set.seed(100)
share_data <- data.frame(
  Date = seq(as.Date("2023-01-01"), by = "days", length.out = 20),
  EarningsPerShare = rnorm(20, mean = 2, sd = 1),
  MarketSentiment = rnorm(20, mean = 5, sd = 2),
  DividendYield = runif(20, min = 1, max = 5),
  SharePrice = 80 + 5* rnorm(20, mean = 0, sd = 1)
)

lm_model <- lm(SharePrice ~ EarningsPerShare + MarketSentiment + DividendYield, data = share_data)
predicted_price <- predict(lm_model, newdata = share_data)

plot(share_data$Date, share_data$SharePrice, type = "l", col = "blue", lty = 1, lwd = 2,
     main = "Actual vs. Predicted Share Price", xlab = "Date", ylab = "Share Price")
lines(share_data$Date, predicted_price, col = "red", lty = 2, lwd = 2)
legend("topright", legend = c("Actual Price", "Predicted Price"), col = c("blue", "red"), lty = 1:2, lwd = 2)