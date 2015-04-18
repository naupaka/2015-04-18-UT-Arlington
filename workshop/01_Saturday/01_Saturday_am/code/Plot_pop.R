# Plot population by Year in Afghanistan
# Naupaka Zimmerman
# naupaka@gmail.com
# April 18, 2015

# load data
data.in <- read.csv("~/Desktop/swc_arlington/Afghanistan_broken.cc.csv")

# reorder data
data.in <- data.in[order(data.in$year),]

# plot data
plot(data.in$year, data.in$pop, 
     type = "l", 
     col = "green", 
     main = "Population by year in Afghanistan", 
     xlab = "Year", 
     ylab = "Population")
points(data.in$year, data.in$pop)

