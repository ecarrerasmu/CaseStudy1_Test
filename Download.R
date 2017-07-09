##############################
#JMJ
#Download GDP and Income data from World Bank Website
# Austin Hancock - Ernesto Carrera - Matthew Przybyla
#Updated 9 July 2017
#############################




#Update the working directory to run this code in other machine.
setwd("/Users/ernestcarrera/Documents/Master Data Science/Doing Data Science/CaseStudy1/Delivery")
#Load package
library(downloader)

#dowlnoad the info. to local machine.
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile="GDP.csv")




###############################
## Download Education. File - with information regarding the INCOME 

#dowlnoad the info. to local machine.
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ",destfile="Education.csv")




