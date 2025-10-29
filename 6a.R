calculate_stationary_distribution <- function(mu, sigma, size, tol = 1e-6) {
  states <- numeric(size)
  states[1] <- 1
  for (i in 2:size) {
    p_sunny_to_rainy <- pnorm(0, mean = mu[1], sd = sigma[1])
    p_rainy_to_sunny <- pnorm(0, mean = mu[2], sd = sigma[2])
    transition_probs <- matrix(c(1 - p_sunny_to_rainy, p_sunny_to_rainy,
                                 p_rainy_to_sunny, 1-p_rainy_to_sunny), nrow = 2, byrow = TRUE)
    states[i] <- sample(c(1, 2), size = 1, prob = transition_probs[states[i - 1], ])
  }
  stationary_dist <- table(states) / size
  stationary_dist <- stationary_dist[stationary_dist > tol]
  return(stationary_dist)
}

mu <- c(1,-1)
sigma <- c(0.5, 0.5)
size<-1000
cat("Initial Stationary Distribution:", sigma, "\n")
stationary_dist <- calculate_stationary_distribution(mu, sigma, size)
cat("Final Stationary Distribution after", size, "steps: ",stationary_dist, "\n")