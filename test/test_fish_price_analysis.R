test_that("test_fish_price_analysis", {
  
  #If price is zero for all species in all locations, we expect zero for all returned values. 
  
  fish <- c("Cod", "Dab", "Greysole", "Haddock","Hake", "Pollock")
  price <- c(0, 0, 0, 0, 0, 0 )
  sites <- c("A", "B", "C", "D", "E", "F")
  prices <- data.frame(fish, price)

  expect_that(fish_price_analysis(prices)$average_price, equals(0))
  expect_that(fish_price_analysis(prices)$least_valued[1,2], equals(0))
  expect_that(fish_price_analysis(prices)$most_valued[1,2], equals(0))
  
})

test_that("test_fish_price_analysis", {
  
  #If all prices are equal the average should be the same 
  
  fish <- c("Cod", "Dab", "Greysole", "Haddock","Hake", "Pollock")
  x <- runif(1, 0, 100)
  price <- c(rep(x, 6))
  sites <- c("A", "B", "C", "D", "E", "F")
  prices <- data.frame(fish, price)
  
  expect_that(fish_price_analysis(prices)$average_price, equals(x))
  
})

