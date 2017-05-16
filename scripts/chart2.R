library(dplyr)
library(ggplot2)

# Create a bar chart that shows the number of students
# who use what operating system and their command line proficiency.

Chart2 <- function(dataset){
  
  adjusted.data <- dataset %>%
                   filter(What.operating.system.do.you.typically.use. == "Mac" | What.operating.system.do.you.typically.use. == "Windows" | What.operating.system.do.you.typically.use. == "Linux")
  command.line.chart <- ggplot(data = adjusted.data) +
         geom_bar(mapping = aes(x = What.operating.system.do.you.typically.use., fill = Using.the.command.line...terminal)) +
         ggtitle("Command line proficiency by OS") +
         labs(x = "OS",y = "Number of Students", fill = "Command Line Proficiency")
  return(command.line.chart)
}
