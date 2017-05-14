library(dplyr)
library(ggplot2)

# Create a pie chart about the question "Do you consider 
# yourself as a dog person or a cat person :)

Chart1 <- function(dataset){
  #Organize information
  group <- dataset%>%group_by(Do.you.consider.yourself.)%>%summarise(count = n()) 
  
  #Draw a pie chart 
  pie <- ggplot(group, aes(x = factor(1), y = count, fill = factor(group$Do.you.consider.yourself.))) +
    geom_bar(width = 1, stat = 'identity' ) + 
    coord_polar(theta = "y")+
    ggtitle("Do you consider yourself as a dog person or a cat person?") 
  return (pie)
}
