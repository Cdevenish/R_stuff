#################          Introduction to R         ##################
#                                                                     #
#              Science & Engineering Extracurricular Award            #
#                       Christian Devenish                            #
#                                                                     #
#                     February 2019, Manchester, UK                   #
#                 Manchester Metropolitan University                  #
#                                                                     #
#######################################################################

## 4. Importing data from excel or text


# First things first...

## set your working directory

setwd("YOUR PATH TO YOUR FOLDER HERE")

# check
getwd()

# Look at the contents of your working directory

# From excel - save to csv - what is a csv?

sparrows <- read.csv("sparrows.csv")

## 3. Check data

head(sparrows)

names(sparrows)

str(sparrows)

## Check data

plot(sparrows$Weight)
plot(sparrows$Culmen)

levels(sparrows$Sex)

## There are some problems with the data....

# Fix these, save as sparrows_fixed.csv and reimport

sparrows <- read.csv("sparrows_fixed.csv")


## Basic plots

hist(sparrows$Culmen)

plot(sparrows$Weight, sparrows$Culmen)

boxplot(Weight ~ Sex, data = sparrows)


# plot with labels.

hist(sparrows$Culmen, xlab = "Weight (kg)")

plot(sparrows$Weight, sparrows$Culmen, xlab = "Weight (g)", ylab = "Culmen (cm)")


# save plot to image

png("scatter_plot_sparrows.png", height = 200, width = 200, units = "mm", res = 100)

plot(sparrows$Weight, sparrows$Culmen, xlab = "Weight (g)", ylab = "Culmen (cm)")

dev.off()




