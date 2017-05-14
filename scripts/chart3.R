library(dplyr)
library(ggplot2)

# Create a bar chart that answers the question "What is the distribution of
# the class standing in INFO 201 Class?"

Chart3 <- function(dataset){
  #Organize information
  sum.data <- dataset %>% group_by(What.is.your.current.class.standing.) %>% summarise(count = n()) %>% arrange()
  #Draw the bar chart 
  pie.three <- ggplot(sum.data, aes(reorder(What.is.your.current.class.standing., -count), count))  + geom_col() + ggtitle("Descending Distribution of Class Standing") +
    labs(x = "Class Standing", y = "Counts")
  return (pie.three)
}
