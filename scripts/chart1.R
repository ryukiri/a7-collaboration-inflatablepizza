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
    ggtitle("Do you consider yourself as a dog person or a cat person?")+
    labs(x = "", y = "", fill = "Choice") + 
    theme(axis.line=element_blank(),
          axis.text.x=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks=element_blank(),
          axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          panel.background=element_blank(),
          panel.border=element_blank(),
          panel.grid.major=element_blank(),
          panel.grid.minor=element_blank(),
          plot.background=element_blank())
    
  return (pie)
}

