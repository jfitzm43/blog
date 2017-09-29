library(Lahman)
library(dplyr)
library(ggplot2)
library(flexdashboard)

# First we need to extract the data I want for this visualization:

result<-Batting%>%
        filter(playerID=='ruthba01')%>%
        select(SO,HR,yearID)

result

# Then we need to create the visualization.

# The first visualization will be a scatterplot:

ggplot()+
  geom_point(data=result, aes(x=SO,y=HR))+
  xlab("Strikeouts")+
  ylab("Homeruns")

# The second visualization will be a histogram:

ggplot()+
  geom_histogram(data=result,aes(x=HR),bins=5, color="blue",fill="white" )+
  xlab("Homeruns")+
  ylab("Count")

# The thirs visualization will be a time series:

ggplot()+
  geom_point(data=result,aes(x=yearID,y=HR))+
  geom_line(data=result,aes(x=yearID,y=HR))+
  xlab("Year")+
  ylab("Homeruns")

# Now we procede to creating the dashboard:


