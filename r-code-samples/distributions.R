x <- seq(-5, 5, length.out = 1000)

# Density
y.d <- dnorm(x)
plot(x, y.d, type = "l", ylim = c(-1,2))

# Distribution
y.p <- pnorm(x)
lines(x, y.p, type = "l", col = "blue")

# error function
erf <- function(x) 2 * pnorm(x * sqrt(2)) - 1
y.erf <- erf(x)
lines(x, y.erf, type = "l", col = "green")

# complementary error function
erfc <- function(x) 2 * pnorm(x * sqrt(2), lower = FALSE)
y.erfc <- erfc(x)
lines(x, y.erfc, type = "l", col = "red")

# quantile
y.q <- qnorm(x)
plot(x, y.q, type = "l", xlim = c(-1,2))

# invers error function
erfinv <- function (x) qnorm((1 + x)/2)/sqrt(2)
y.erfi <- erfinv(x)
lines(x, y.erfi, type = "l", col = "green")

# inverse compl. error function
erfcinv <- function (x) qnorm(x/2, lower = FALSE)/sqrt(2)
y.erfci <- erfcinv(x)
lines(x, y.erfci, type = "l", col = "red")
