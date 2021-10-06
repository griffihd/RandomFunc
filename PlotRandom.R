## PlotRandom.R
## Directory: Desktop/STA 308/week7/RandomFunc
## Original: 10/6/21

plotRandomNormals <- function(numpts=1000, numbins=15, mu=24, sigma=3, meanColor="red", linewidth=2, seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v=mean_x, col=meanColor, lwd=linewidth)
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x) )
}

## Test the function

plotRandomNormals(linewidth = 5)

