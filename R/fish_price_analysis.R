#' Fish price analysis
#'
#' @description
#'
#' @param prices a table that has prices for different fish
#'
#' @return a list containing the following elements: 1) the value of the average price across different fish species (average_price) 2) a tibble indicating the least valued species and its price (least_valued) 3) a tibble indicating the most valued species and its price (most_valued)
#' 
#' @export
#'
#' @author Lina Barbosa, Ignacia Rivera & Rucha Thakar
#'
#' @importFrom magrittr "%>%"

fish_price_analysis<- function(prices = NULL){
  
  library(dplyr)
  library(magrittr)
  
  ##### Average price #####
  
  #Obtain max by site and identify most frequent species
  average_price <- mean(prices[,2])
  
  #### Least valued species and its price ####
  min_price <- min(prices[,2])
  least_valued <- prices %>% 
    filter(prices[,2] == min_price)
  
  #### most valued species and its price ####
  max_price <- max(prices[,2])
  most_valued <- prices %>% 
    filter(prices[,2] == max_price)
  
  return(list(average_price= average_price,
              least_valued = least_valued,
              most_valued = most_valued))
}
