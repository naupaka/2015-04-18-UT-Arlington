# Plot population by Year in country file given as command line argument
# Naupaka Zimmerman
# naupaka@gmail.com
# April 18, 2015

# Set this to TRUE to get extra debugging output
DEBUG <- FALSE

# Get command line srguments and store into args vector
args <- commandArgs(trailingOnly = TRUE)
suppressMessages(require("grid"))

# load data from first command line argument
data.in <- read.table(args[1], sep = "\t")

# Display extra info if debugging is needed
if (DEBUG) print(args[1])
if (DEBUG) print(data.in)

# reorder data based on years
data.in <- data.in[order(data.in[,2]),]

# dynamically make filename from input and open a png to save to
png(filename = paste0(args[1], ".png"))

## Store columns of interest into variables
# years
years <- data.in[,2] 
# population divided by 1 million for ease of display
population <- data.in[,3]/1000000 

# plot data
plot(years, population, 
     type = "l", # plot as a line plot 
     col = "green", 
     main = paste("Population by year in", args[1]), # set title 
     xlab = "Year", 
     ylab = "Population in millions")
points(years, population) # add points layer on top of line

# close png figure file
garbage <- dev.off()
