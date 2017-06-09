test_that("test_fish_function", {

  #If catch is zero for all species in all locations, we expect zero total catches. 
  
  fish <- c("Cod", "Dab", "Greysole", "Haddock","Hake", "Pollock")
  price <- c(3.15, 2.85, 5.56, 2.44, 2.21, 1.59 )
  sites <- c("A", "B", "C", "D", "E", "F")
  prices <- data.frame(fish, price)
  set.seed(1)
  catch <- matrix(data= 0,  nrow = length(fish), ncol = length(sites))
  catch <- data.frame(fish, catch)
  colnames(catch) <- c("fish", unique(sites))

  expect_that(fish_function(prices, catch, TRUE)$total_catches, equals(0))

})

test_that("test_fish_function", {
  
  #If 10 fishes of each 6 species, were caught in each 6 location, total catches should be 360
  
  fish <- c("Cod", "Dab", "Greysole", "Haddock","Hake", "Pollock")
  price <- c(0,0,0,0,0,0)
  sites <- c("A", "B", "C", "D", "E", "F")
  x <- data.frame(fish, price)
  y <- matrix(10,  nrow = length(fish), ncol = length(sites))
  y <- data.frame(fish, y)
  colnames(y) <- c("fish", unique(sites))

  expect_that(fish_function(x, y, TRUE)$total_catches, equals(360))
  
})


