library(dplyr)
library(ggplot2)

# Create a bar chart that shows the number of students
# who use what operating system and their command line proficiency.

Chart2 <- function(dataset){
  pie <- ggplot(data = dataset) +
         geom_bar(mapping = aes(x = What.operating.system.do.you.typically.use., fill = Using.the.command.line...terminal)) +
         ggtitle("Students using which operating system and their command line proficiency")
  return(pie)
}
