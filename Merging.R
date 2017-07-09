##############################
#JMJ
#Merging GDP and Income data from World Bank Website
# Austin Hancock - Ernesto Carrera - Matthew Przybyla
#Updated 9 July 2017
#############################


#Update the working directory to run this code in other machine.
setwd("/Users/ernestcarrera/Documents/Master Data Science/Doing Data Science/CaseStudy1/Delivery")


## 1 - Merge tables
# Merge
testMerge <- merge(GDP, Educ, by='CountryCode', all=FALSE)