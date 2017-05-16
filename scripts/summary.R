library(dplyr)

# Total number of students
num.students <- nrow(survey)

# Function to get number of people at a certain class standing in the class
GetNumPeopleByClassStanding <- function(survey, class) {
  num.in.class <- nrow(survey %>% filter(What.is.your.current.class.standing. == class))
  return(num.in.class)
}

# Function to get percentage of people who typically use a certain operating system
PercentPeopleUseOperatingSystem <- function(survey, operating.system) {
  percent.use.system <- round(nrow(survey %>% filter(What.operating.system.do.you.typically.use. == operating.system)) / num.students * 100)
  return(percent.use.system)
}

# Function to get percent of people with a certain amount of experience in R
PercentWithRExperience <- function(survey, experience) {
  percent.with.experience <- round(nrow(survey %>% filter(Using.the.R.programming.language == experience)) / num.students * 100)
  return(percent.with.experience)
}

# Function to get percent of cat people
PercentCatPerson <- function(survey) {
  percent.cat <- round(nrow(survey %>% filter(Do.you.consider.yourself. == "A cat person....")) / num.students * 100)
  return(percent.cat)
}

# Function to get percent of cat people
PercentDogPerson <- function(survey) {
  percent.dog <- round(nrow(survey %>% filter(Do.you.consider.yourself. == "A dog person...")) / num.students * 100)
  return(percent.dog)
}